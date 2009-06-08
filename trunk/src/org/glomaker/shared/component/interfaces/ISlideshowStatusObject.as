package org.glomaker.shared.component.interfaces
{
	public interface ISlideshowStatusObject
	{
		function get pageCount():uint;
		function get currentPage():int;
		function get isPageSelected():Boolean;
		function get isFirst():Boolean;
		function get isLast():Boolean;
	}
}