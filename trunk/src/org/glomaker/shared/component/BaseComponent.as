package org.glomaker.shared.component
{
	import mx.binding.utils.BindingUtils;
	import mx.binding.utils.ChangeWatcher;
	import mx.events.FlexEvent;
	import mx.modules.Module;
	
	import org.glomaker.shared.component.interfaces.IComponentPlugin;
	import org.glomaker.shared.properties.PropertyField;

	public class BaseComponent extends Module implements IComponentPlugin
	{
		/**
		 * Collection of all properties relating to the display of this component. 
		 */
		private var _properties:Array;
	
		/**
		 * A reference to the shared memory object 
		 */
		private var _sharedMemory:Object;
		
		
		// changewatcher instances for dynamically created bindings
		private var _changeWatchers:Array = [];
		
		
		
		/**
		 * Constructor. 
		 * 
		 */
		public function BaseComponent()
		{
			super();
			
			// instantiate properties collection
			_properties = [];
			
			// add event listener to detect creationComplete
			addEventListener(FlexEvent.CREATION_COMPLETE, onCreationComplete);
		}
		
		/**
		 * Triggered once the component is complete. 
		 * @param evt
		 * 
		 */
		protected function onCreationComplete(evt:FlexEvent):void
		{
			// define default properties for this component
			defineProperties();
			
			removeEventListener(FlexEvent.CREATION_COMPLETE, onCreationComplete);
		}

		
		/**
		 * Implements IComponentPlugin interface.
		 */
		public function getProperties():Array
		{
			return _properties;
		}
		

		/**
		 * Implements IComponentPlugin interface.
		 */
		public function propertyValuesInitialised():void
		{
			// empty - implement specific behaviour in subclass
		}
		

		/**
		 * Implements IComponentPlugin interface.
		 */
		public function prepareValuesForSave():void
		{
			// empty - implement specific behaviour in subclass
		}
		
		/**
		 * Implements IComponentPlugin interface. 
		 * @param prop
		 */		
		public function editablePropertyUpdated(prop:PropertyField):void
		{
		}
		
		/**
		 * Implements IComponentPlugin interface.
		 */		
		public function destroy():void
		{
			// clean up auto-generated databindings
			for each(var watcher:ChangeWatcher in _changeWatchers)
			{
				watcher.unwatch();
			}
			_changeWatchers = [];
			
			// free up properties
			for each(var prop:PropertyField in _properties)
				prop.destroy();
				
			_properties = null;
		}
		
		/**
		 * Change the mode of the component between edit (true) and display (false) modes 
		 * Implements IComponentPlugin interface.
 		 */		
		public function setEditMode(f:Boolean):void
		{
		}
		
			
		/**
		 * Provides the component with the shared memory object 
		 * Implements IComponentPlugin interface.
 		 */		
		public function setSharedMemory(o:Object):void{
			_sharedMemory = o;
		}

		
		/**
		 * Method used to define properties exposed by this component. 
		 */		
		protected function defineProperties():void
		{
		}

		
		/**
		 * Adds a PropertyField instance to the list of properties that this component exposes to the outside world.
		 * The property won't be accessible via the GLOMaker properties panel.
		 * @param pf
		 * 
		 * @see addEditableProperty()
		 */
		protected function addInternalProperty(pf:PropertyField):void
		{
			pf.isEditable = false;
			_properties.push(pf);
		}


		/**
		 * Adds a PropertyField instance to the list of properties that this component exposes to the outside world.
		 * The property will be accessible via the GLOMaker properties panel.
		 * @param pf
		 * 
		 * @see addInternalProperty()
		 */
		protected function addEditableProperty(pf:PropertyField):void
		{
			pf.isEditable = true;
			_properties.push(pf);
		}
		
	}
}