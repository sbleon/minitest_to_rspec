a.stubs(:x).returns(1).once
a.stubs(:x).returns(1).twice
a.stubs(:x).with(:y).returns(1).once
a.stubs(:x).with(:y).returns(1).twice
a.expects(:x).once
a.expects(:x).twice
a.expects(:x).returns(1).once
a.expects(:x).returns(1).twice
a.expects(:x).with(:y).returns(1).once
a.expects(:x).with(:y).returns(1).twice
A.any_instance.stubs(:x).returns(1).once
A.any_instance.stubs(:x).returns(1).twice
A.any_instance.expects(:x).returns(1).once
A.any_instance.expects(:x).returns(1).twice
A.any_instance.stubs(:x).with(:y).returns(1).once
A.any_instance.stubs(:x).with(:y).returns(1).twice
A.any_instance.expects(:x).with(:y).returns(1).once
A.any_instance.expects(:x).with(:y).returns(1).twice