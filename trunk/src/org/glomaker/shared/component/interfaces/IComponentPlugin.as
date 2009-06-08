package org.glomaker.shared.component.interfaces
{
	import mx.core.IUIComponent;
	
	import org.glomaker.shared.properties.PropertyField;
	
	/**
	 * Defines methods to be implemented by GLO component plugins. 
	 * @author Nils
	 */	
	public interface IComponentPlugin extends IUIComponent
	{
		

		/**
		 * Return the PropertyFields defined by this component. 
		 * @return 
		 */		
		function getProperties():Array;
		
		
		/**
		 * Notifies the component that the values of its defined PropertyFields have been updated. 
		 */
		function propertyValuesInitialised():void;
		
		/**
		 * Notifies the component that it should update its defined PropertyField values to match those stored/displayed by the component.
		 * This method is called before the component's PropertyField values are saved. 
		 */		
		function prepareValuesForSave():void;
		
		
		/**
		 * Notifies the component that the value of an individual property has been updated. 
		 * @param prop
		 */		
		function editablePropertyUpdated(prop:PropertyField):void;
		
		
		/**
		 * Change the mode of the component between edit (true) and display (false) modes 
		 */		
		function setEditMode(f:Boolean):void;		
		
		/**
		 * Provides the component with the shared memory object 
		 */		
		function setSharedMemory(o:Object):void;		
		
		/**
		 * Cleanup method called when a component instance is permanently removed from the display list. 
		 */		
		function destroy():void;
		
	}
}