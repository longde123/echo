package;

import haxe.unit.TestRunner;

/**
 * ...
 * @author https://github.com/wimcake
 */
class Main {

	static public function main() {
		var r = new TestRunner();

		r.add(new TestSignal());
		r.add(new TestComponentTypes());
		r.add(new TestComponentOp());
		r.add(new TestIdOp());

		r.add(new TestEchoOp());
		r.add(new TestMeta());

		r.add(new TestViewOp());
		r.add(new TestSystem());
		r.add(new TestSmoke1());
		r.add(new TestSmoke2());
		r.add(new TestPerfomance());

		var ret = r.run();

		#if sys
		Sys.exit(ret ? 0 : 1);
		#end
	}

}
