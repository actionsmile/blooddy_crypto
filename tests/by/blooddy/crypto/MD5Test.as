////////////////////////////////////////////////////////////////////////////////
//
//  (C) 2011 BlooDHounD
//
////////////////////////////////////////////////////////////////////////////////

package by.blooddy.crypto {

	import flexunit.framework.Assert;
	
	import org.flexunit.runners.Parameterized;
	import flash.utils.ByteArray;
	
	[RunWith( "org.flexunit.runners.Parameterized" )]
	/**
	 * @author					BlooDHounD
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @created					07.03.2011 18:16:57
	 */
	public class MD5Test {
		
		//--------------------------------------------------------------------------
		//
		//  Class initialization
		//
		//--------------------------------------------------------------------------
		
		Parameterized;
		
		//--------------------------------------------------------------------------
		//
		//  Methods
		//
		//--------------------------------------------------------------------------
		
		public static var $hash:Array = [
			[ 'd41d8cd98f00b204e9800998ecf8427e', '' ],
			[ '0cc175b9c0f1b6a831c399e269772661', 'a' ],
			[ '900150983cd24fb0d6963f7d28e17f72', 'abc' ],
			[ 'f96b697d7cb7938d525a2f31aaf161d0', 'message digest' ],
			[ 'c3fcd3d76192e4007dfb496cca67e13b', 'abcdefghijklmnopqrstuvwxyz' ],
			[ 'd174ab98d277d9f5a5611c2c9f419d9f', 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789' ],
			[ '57edf4a22be3c955ac49da2e2107b67a', '12345678901234567890123456789012345678901234567890123456789012345678901234567890' ]
		];
		
		[Test( dataProvider="$hash" )]
		public function hash(result:String, str:String):void {
			Assert.assertEquals( MD5.hash( str ), result );
		}
		
		[Test( dataProvider="$hash" )]
		public function hashBytes(result:String, str:String):void {
			var bytes:ByteArray = new ByteArray();
			bytes.writeUTFBytes( str );
			Assert.assertEquals( MD5.hashBytes( bytes ), result );
		}
		
	}
	
}