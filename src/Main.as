package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Ryan Underwood
	 */
	public class Main extends Sprite 
	{
		private var ball:Ball;
		private var square:Square;
		private var speed:Number = 5
		
		public function Main():void 
		{
			init()
		}
		
		private function init():void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			square = new Square();
			ball = new Ball();
			addChild(square);
			addChild(ball);
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			
		}
		private function onEnterFrame(e:Event):void 
		{
			var dx:Number = mouseX - ball.x;
			var dy:Number = mouseY - ball.y;
			var angle:Number = Math.atan2(dy, dx);
			ball.rotation = angle * 180 / Math.PI; 
			var vx:Number = Math.cos(angle) * speed;
			var vy:Number = Math.sin(angle) * speed;
			ball.x += vx;
			ball.y += vy;
			
		}
		
		
	}
	
}