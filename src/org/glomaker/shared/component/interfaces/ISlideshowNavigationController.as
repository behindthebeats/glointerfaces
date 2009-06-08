package org.glomaker.shared.component.interfaces
{
	/**
	 * Interface to be implemented by classes that allow components to navigate the slideshow.
	**/ 
	public interface ISlideshowNavigationController
	{
		/**
		 * Go to the previous page.
		 * Fails silently if there is no previous page. 
		 */		
		function previous():void;
		
		/**
		 * Go to the next page.
		 * Fails silently if there is no next page.
		**/
		function next():void;
		
		/**
		 * Go to a specific page index.
		 * Fails silently if the page index is out of bounds. 
		 * @param pageIndex
		 */		
		function goto(pageIndex:uint):void;
	}
}