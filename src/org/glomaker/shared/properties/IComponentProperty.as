package org.glomaker.shared.properties
{
	
	/**
	 * Defines the interface for a data property used by an GLOMaker component plugin. 
	 * @author Nils
	 * 
	 */	
	public interface IComponentProperty
	{
		function set propValue(value:*):void;
		function get propValue():*;
		
		function set propName(value:String):void;
		function get propName():String;
		
		function set editLabel(value:String):void;
		function get editLabel():String;
		
		function isFilePath():Boolean;
		
		function hasOwnSerialiser():Boolean;
		function serialiseToXML(parentNode:XML):void;
		function deserialiseFromXML(value:XML):void;
		
		function destroy():void;
	}
}