package
{
	import mx.controls.treeClasses.TreeItemRenderer;

	public class CustomizedTreeItemRender extends TreeItemRenderer
	{
		static var contextMenu:ContextMenu = new ContextMenu(); 
		public function CustomizedTreeItemRender()
		{
			super();
			var menuItems:Array = [];
			var edit:ContextMenuItem = new ContextMenuItem("Edit Name");
			edit.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, databases_menuItemSelectHandler);
			menuItems.push(edit);
			contextMenu.customItems = menuItems;
			this.contextMenu = contextMenu;
		}
		
	}
}