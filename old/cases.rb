    leap = case  
           when obj.class  == %{Hacker} then  %{It's a Hacker!}   
           when obj.class  == %{Submission} then  %{It's a Submission!}   
           when obj.class  == %{TestCase} then %{It's a TestCase!}   
           when obj.class  == %{Contest} then  %{It's a Contest!}              
           else then  %{It's an unknown model}
           end  
    p leap 