package org.glomaker.shared.properties
{
	public class NumericStepperField extends IntegerField
	{
		protected var min:int ;
		protected var max:int ;
		
		public function NumericStepperField(propName:String, label:String, value:int,min:int = int.MIN_VALUE,max:int = int.MAX_VALUE)
		{
			super(propName, label, value);
			
			this.min = min;
			this.max = max;
			   
		} 
	/* 	
		override public function set value(val:*):void
		{
			super.value = val;
			
			if(val>max)
		     super.value = max;
		     
			if(val<min)
		     super.value = min;
		} */
		
		public function set maximum(m:int):void{
			max = m;
		}
		
		public function set minimum(m:int):void{
			min = m;
		}
		
		public function get maximum():int{
			return max;
		}
		
		public function get minimum():int{
			return min;
		}
		
	}
}