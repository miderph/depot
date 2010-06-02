 class Person < ActiveRecord::Base  
   include AASM  
    
   aasm_column :current_state # 定义那个字段来储存当前状态  
   aasm_initial_state :sleeping #定义初始状态  
    
   #定义三个不同的状态  
   aasm_state :sleeping  
   aasm_state :eating  
   aasm_state :working  
   
   #定义每个event及event发生时引发的状态转换  
   aasm_event :eat do  
     transitions :from => [:sleeping,:working], :to => :eating  
   end  
    
   aasm_event :work do  
     transitions :from => :eating, :to =>:working  
   end  
    
   aasm_event :sleep do  
     transitions :from => :eating, :to => :sleeping  
   end  
 end 