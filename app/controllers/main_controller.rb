class MainController < ApplicationController
  def test2
      scorelist=params[:scorelist]
      subjectlist=params[:subjectlist]
      @max=scorelist[0].to_i
      @maxSub=subjectlist[0]
      @Total=0
      i=0
      scorelist.each do |score|
        if(score.to_i>@max)
          @max=score.to_i
          @maxSub=subjectlist[i]
        end
        @Total+=score.to_i
        i+=1
      end
  end
  def test
    @subno = params[:no]
    if(params[:no])
      @subno=params[:no].to_i
      @subjectlist=nil
      @scorelist=nil
    else
      @subno=0
      @subjectlist=[]
      @scorelist=[]
      i=0
      10.times do |i|
        if(params["subject#{i}"] &&params["score#{i}"])
            @subno+=1
            @subjectlist.push(params["subject#{i}"] )
            @scorelist.push(params["score#{i}"])
        end
      end
    end
    if(@subjectlist&&@scorelist&&!(@subjectlist.include?("")||@scorelist.include?("")))
        redirect_to action: 'test2' ,subjectlist:@subjectlist,scorelist:@scorelist
    end
  end
  def home
  end
end
