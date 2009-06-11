package org.glomaker.shared.component.optimisation
{
	import mx.collections.ArrayCollection;
	import mx.containers.Canvas;
	import mx.containers.ControlBar;
	import mx.containers.HBox;
	import mx.containers.Panel;
	import mx.containers.VBox;
	import mx.controls.Button;
	import mx.controls.CheckBox;
	import mx.controls.DataGrid;
	import mx.controls.Image;
	import mx.controls.Label;
	import mx.controls.List;
	import mx.controls.NumericStepper;
	import mx.controls.RadioButton;
	import mx.controls.SWFLoader;
	import mx.controls.Spacer;
	import mx.controls.Text;
	import mx.controls.TextArea;
	import mx.controls.TileList;
	
	import org.glomaker.shared.component.BaseComponent;
	import org.glomaker.shared.component.utils.MissingImageSkin;
	import org.glomaker.shared.properties.FilePathField;
	import org.glomaker.shared.properties.IntegerField;
	import org.glomaker.shared.properties.NumberField;
	import org.glomaker.shared.properties.RichTextField;
	import org.glomaker.shared.properties.StringArrayCollectionField;
	import org.glomaker.shared.properties.StringField;
	import org.glomaker.shared.ui.editbutton.EditableButton;
	import org.glomaker.shared.utils.MutableArray;
	
	public class PluginOptimiser
	{

		private var classIncludes:Array = [
					BaseComponent,
					StringField,
					NumberField,
					IntegerField,
					StringArrayCollectionField,
					FilePathField,
					RichTextField,
					Array,
					ArrayCollection,
					MissingImageSkin,
					MutableArray
				];
				
		private var uiIncludes:Array = [
					Label,
					TextArea,
					DataGrid,
					Image,
					NumericStepper,
					Text,
					SWFLoader,
					Button,
					Panel,
					Spacer,
					ControlBar,
					HBox,
					VBox,
					Canvas,
					List,
					TileList,
					CheckBox,
					RadioButton,
					EditableButton
				];

	}
}