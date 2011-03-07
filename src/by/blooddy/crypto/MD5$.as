////////////////////////////////////////////////////////////////////////////////
//
//  (C) 2011 BlooDHounD
//
////////////////////////////////////////////////////////////////////////////////

package by.blooddy.crypto {

	import apparat.inline.Macro;
	
	import by.blooddy.math.utils.IntUtils;

	[ExcludeClass]
	/**
	 * @author					BlooDHounD
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @created					07.03.2011 19:12:18
	 */
	internal final class MD5$ extends Macro {
		
		//--------------------------------------------------------------------------
		//
		//  Class methods
		//
		//--------------------------------------------------------------------------

		[Inline( "direct_copy" )]
		/**
		 * transformations for round 1
		 */
		public static function FF(a:int, b:int, c:int, d:int, x:int, s:int, t:int):void {
			a += ( ( b & c ) | ( ( ~b ) & d ) ) + x + t;
			a = IntUtils.rol( a, s ) + b;
		}

		[Inline( "direct_copy" )]
		/**
		 * transformations for round 2
		 */
		public static function GG(a:int, b:int, c:int, d:int, x:int, s:int, t:int):void {
			a += ( ( b & d ) | ( c & ( ~d ) ) ) + x + t;
			a = IntUtils.rol( a, s ) + b;
		}

		[Inline( "direct_copy" )]
		/**
		 * transformations for round 3
		 */
		public static function HH(a:int, b:int, c:int, d:int, x:int, s:int, t:int):void {
			a += ( b ^ c ^ d ) + x + t;
			a = IntUtils.rol( a, s ) + b;
		}

		[Inline( "direct_copy" )]
		/**
		 * transformations for round 4
		 */
		public static function II(a:int, b:int, c:int, d:int, x:int, s:int, t:int):void {
			a += ( c ^ ( b | ( ~d ) ) ) + x + t;
			a = IntUtils.rol( a, s ) + b;
		}

	}
	
}