package {
	import flash.display.Sprite;

	public class Square extends Sprite {

		
		private var color:uint;
		private var _x :Number;
		private var _y :Number;
		

		public function Square (_x:Number=15, _y:Number=15, color:uint=0xff0000) {
			this._x = _x;
			this._y = _y;
			this.color = color;
			init();
		}

		private function init():void {
			graphics.beginFill(color);
			graphics.drawRect(_x,_y , 15, 15);
			graphics.endFill();
		}	
	}
}