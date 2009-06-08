package org.glomaker.shared.component.interfaces
{
	/**
	 * Interface to be implemented by components that wish to be able to update slideshow status (next/previous/etc)
	**/
	public interface ISlideshowNavigator
	{
		
		/**
		 * Attaches a slideshow controller instance.
		 * The component can use this instance to navigate inside the current slideshow.
		**/
		function attachSlideshowController(controller:ISlideshowNavigationController):void;
		
		/**
		 * Removes the slideshow controller.
		 * Cleanup method called when a component instance is destroyed.
		**/
		function detachSlideshowController():void;
		
	}
}