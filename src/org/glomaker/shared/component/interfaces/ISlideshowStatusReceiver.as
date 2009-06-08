package org.glomaker.shared.component.interfaces
{
	
	/**
	 * Interface to be implemented by components that wish to receive slideshow status updates.
	**/
	public interface ISlideshowStatusReceiver
	{
		
		function receiveUpdate(info:ISlideshowStatusObject):void;
		
	}
}