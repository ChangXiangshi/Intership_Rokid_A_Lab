       �K"	   R���Abrain.Event:2:ʬ�Md     <�}j	��R���A"��	
t
input/PlaceholderPlaceholder*
dtype0*'
_output_shapes
:@���������*
shape:@���������
v
input/Placeholder_1Placeholder*
dtype0*'
_output_shapes
:@���������*
shape:@���������
i
$learning_rate/Variable/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
learning_rate/Variable
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
learning_rate/Variable/AssignAssignlearning_rate/Variable$learning_rate/Variable/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*)
_class
loc:@learning_rate/Variable
�
learning_rate/Variable/readIdentitylearning_rate/Variable*
_output_shapes
: *
T0*)
_class
loc:@learning_rate/Variable
d
learning_rate_1/tagsConst* 
valueB Blearning_rate_1*
dtype0*
_output_shapes
: 
t
learning_rate_1ScalarSummarylearning_rate_1/tagslearning_rate/Variable/read*
T0*
_output_shapes
: 
�
;rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_1Const*
dtype0*
_output_shapes
:*
valueB:�
�
Arnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
<rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concatConcatV2;rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_1Arnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
Arnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
;rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zerosFill<rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concatArnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	@�
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_3Const*
valueB:�*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_4Const*
valueB:@*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_5Const*
dtype0*
_output_shapes
:*
valueB:�
�
Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
>rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1ConcatV2=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_4=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_5Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1Fill>rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	@�
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_6Const*
valueB:@*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_7Const*
valueB:�*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ConstConst*
dtype0*
_output_shapes
:*
valueB:@
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
>rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concatConcatV2=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_1Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zerosFill>rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concatCrnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/Const*
T0*

index_type0*
_output_shapes
:	@�
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_3Const*
valueB:�*
dtype0*
_output_shapes
:
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_4Const*
valueB:@*
dtype0*
_output_shapes
:
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_5Const*
valueB:�*
dtype0*
_output_shapes
:
�
Ernn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
@rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1ConcatV2?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_4?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_5Ernn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
Ernn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1Fill@rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1Ernn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	@�
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_6Const*
valueB:@*
dtype0*
_output_shapes
:
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_7Const*
valueB:�*
dtype0*
_output_shapes
:
�
*embedding/Initializer/random_uniform/shapeConst*
_output_shapes
:*
_class
loc:@embedding*
valueB"�  �   *
dtype0
�
(embedding/Initializer/random_uniform/minConst*
_output_shapes
: *
_class
loc:@embedding*
valueB
 *Y��*
dtype0
�
(embedding/Initializer/random_uniform/maxConst*
_class
loc:@embedding*
valueB
 *Y�<*
dtype0*
_output_shapes
: 
�
2embedding/Initializer/random_uniform/RandomUniformRandomUniform*embedding/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
�/�*

seed *
T0*
_class
loc:@embedding*
seed2 
�
(embedding/Initializer/random_uniform/subSub(embedding/Initializer/random_uniform/max(embedding/Initializer/random_uniform/min*
_class
loc:@embedding*
_output_shapes
: *
T0
�
(embedding/Initializer/random_uniform/mulMul2embedding/Initializer/random_uniform/RandomUniform(embedding/Initializer/random_uniform/sub*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
$embedding/Initializer/random_uniformAdd(embedding/Initializer/random_uniform/mul(embedding/Initializer/random_uniform/min*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
	embedding
VariableV2*
shape:
�/�*
dtype0* 
_output_shapes
:
�/�*
shared_name *
_class
loc:@embedding*
	container 
�
embedding/AssignAssign	embedding$embedding/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
�/�
n
embedding/readIdentity	embedding* 
_output_shapes
:
�/�*
T0*
_class
loc:@embedding
x
lm/embedding_lookup/axisConst*
_class
loc:@embedding*
value	B : *
dtype0*
_output_shapes
: 
�
lm/embedding_lookupGatherV2embedding/readinput/Placeholderlm/embedding_lookup/axis*
Tindices0*
Tparams0*
_class
loc:@embedding*,
_output_shapes
:@����������*
Taxis0
M
lm/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
T
lm/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
T
lm/rnn/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
r
lm/rnn/rangeRangelm/rnn/range/startlm/rnn/Ranklm/rnn/range/delta*

Tidx0*
_output_shapes
:
g
lm/rnn/concat/values_0Const*
_output_shapes
:*
valueB"       *
dtype0
T
lm/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
lm/rnn/concatConcatV2lm/rnn/concat/values_0lm/rnn/rangelm/rnn/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
lm/rnn/transpose	Transposelm/embedding_lookuplm/rnn/concat*
T0*,
_output_shapes
:���������@�*
Tperm0
\
lm/rnn/ShapeShapelm/rnn/transpose*
_output_shapes
:*
T0*
out_type0
d
lm/rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
lm/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
lm/rnn/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
lm/rnn/strided_sliceStridedSlicelm/rnn/Shapelm/rnn/strided_slice/stacklm/rnn/strided_slice/stack_1lm/rnn/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
V
lm/rnn/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
Y
lm/rnn/Const_1Const*
_output_shapes
:*
valueB:�*
dtype0
V
lm/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
lm/rnn/concat_1ConcatV2lm/rnn/Constlm/rnn/Const_1lm/rnn/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
W
lm/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
u
lm/rnn/zerosFilllm/rnn/concat_1lm/rnn/zeros/Const*
_output_shapes
:	@�*
T0*

index_type0
M
lm/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
�
lm/rnn/TensorArrayTensorArrayV3lm/rnn/strided_slice*2
tensor_array_namelm/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:	@�*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
�
lm/rnn/TensorArray_1TensorArrayV3lm/rnn/strided_slice*1
tensor_array_namelm/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	@�*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
o
lm/rnn/TensorArrayUnstack/ShapeShapelm/rnn/transpose*
T0*
out_type0*
_output_shapes
:
w
-lm/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/lm/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/lm/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
'lm/rnn/TensorArrayUnstack/strided_sliceStridedSlicelm/rnn/TensorArrayUnstack/Shape-lm/rnn/TensorArrayUnstack/strided_slice/stack/lm/rnn/TensorArrayUnstack/strided_slice/stack_1/lm/rnn/TensorArrayUnstack/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
g
%lm/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%lm/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
lm/rnn/TensorArrayUnstack/rangeRange%lm/rnn/TensorArrayUnstack/range/start'lm/rnn/TensorArrayUnstack/strided_slice%lm/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:���������*

Tidx0
�
Alm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lm/rnn/TensorArray_1lm/rnn/TensorArrayUnstack/rangelm/rnn/transposelm/rnn/TensorArray_1:1*
T0*#
_class
loc:@lm/rnn/transpose*
_output_shapes
: 
R
lm/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
b
lm/rnn/MaximumMaximumlm/rnn/Maximum/xlm/rnn/strided_slice*
T0*
_output_shapes
: 
`
lm/rnn/MinimumMinimumlm/rnn/strided_slicelm/rnn/Maximum*
T0*
_output_shapes
: 
`
lm/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
�
lm/rnn/while/EnterEnterlm/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context
�
lm/rnn/while/Enter_1Enterlm/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context
�
lm/rnn/while/Enter_2Enterlm/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context
�
lm/rnn/while/Enter_3Enter;rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�**

frame_namelm/rnn/while/while_context
�
lm/rnn/while/Enter_4Enter=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�**

frame_namelm/rnn/while/while_context
�
lm/rnn/while/Enter_5Enter=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�**

frame_namelm/rnn/while/while_context
�
lm/rnn/while/Enter_6Enter?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�**

frame_namelm/rnn/while/while_context
w
lm/rnn/while/MergeMergelm/rnn/while/Enterlm/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
}
lm/rnn/while/Merge_1Mergelm/rnn/while/Enter_1lm/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
}
lm/rnn/while/Merge_2Mergelm/rnn/while/Enter_2lm/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
�
lm/rnn/while/Merge_3Mergelm/rnn/while/Enter_3lm/rnn/while/NextIteration_3*!
_output_shapes
:	@�: *
T0*
N
�
lm/rnn/while/Merge_4Mergelm/rnn/while/Enter_4lm/rnn/while/NextIteration_4*
N*!
_output_shapes
:	@�: *
T0
�
lm/rnn/while/Merge_5Mergelm/rnn/while/Enter_5lm/rnn/while/NextIteration_5*
N*!
_output_shapes
:	@�: *
T0
�
lm/rnn/while/Merge_6Mergelm/rnn/while/Enter_6lm/rnn/while/NextIteration_6*
T0*
N*!
_output_shapes
:	@�: 
g
lm/rnn/while/LessLesslm/rnn/while/Mergelm/rnn/while/Less/Enter*
T0*
_output_shapes
: 
�
lm/rnn/while/Less/EnterEnterlm/rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context
m
lm/rnn/while/Less_1Lesslm/rnn/while/Merge_1lm/rnn/while/Less_1/Enter*
_output_shapes
: *
T0
�
lm/rnn/while/Less_1/EnterEnterlm/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context
e
lm/rnn/while/LogicalAnd
LogicalAndlm/rnn/while/Lesslm/rnn/while/Less_1*
_output_shapes
: 
R
lm/rnn/while/LoopCondLoopCondlm/rnn/while/LogicalAnd*
_output_shapes
: 
�
lm/rnn/while/SwitchSwitchlm/rnn/while/Mergelm/rnn/while/LoopCond*%
_class
loc:@lm/rnn/while/Merge*
_output_shapes
: : *
T0
�
lm/rnn/while/Switch_1Switchlm/rnn/while/Merge_1lm/rnn/while/LoopCond*
T0*'
_class
loc:@lm/rnn/while/Merge_1*
_output_shapes
: : 
�
lm/rnn/while/Switch_2Switchlm/rnn/while/Merge_2lm/rnn/while/LoopCond*
_output_shapes
: : *
T0*'
_class
loc:@lm/rnn/while/Merge_2
�
lm/rnn/while/Switch_3Switchlm/rnn/while/Merge_3lm/rnn/while/LoopCond**
_output_shapes
:	@�:	@�*
T0*'
_class
loc:@lm/rnn/while/Merge_3
�
lm/rnn/while/Switch_4Switchlm/rnn/while/Merge_4lm/rnn/while/LoopCond*
T0*'
_class
loc:@lm/rnn/while/Merge_4**
_output_shapes
:	@�:	@�
�
lm/rnn/while/Switch_5Switchlm/rnn/while/Merge_5lm/rnn/while/LoopCond*
T0*'
_class
loc:@lm/rnn/while/Merge_5**
_output_shapes
:	@�:	@�
�
lm/rnn/while/Switch_6Switchlm/rnn/while/Merge_6lm/rnn/while/LoopCond*
T0*'
_class
loc:@lm/rnn/while/Merge_6**
_output_shapes
:	@�:	@�
Y
lm/rnn/while/IdentityIdentitylm/rnn/while/Switch:1*
T0*
_output_shapes
: 
]
lm/rnn/while/Identity_1Identitylm/rnn/while/Switch_1:1*
_output_shapes
: *
T0
]
lm/rnn/while/Identity_2Identitylm/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
f
lm/rnn/while/Identity_3Identitylm/rnn/while/Switch_3:1*
T0*
_output_shapes
:	@�
f
lm/rnn/while/Identity_4Identitylm/rnn/while/Switch_4:1*
T0*
_output_shapes
:	@�
f
lm/rnn/while/Identity_5Identitylm/rnn/while/Switch_5:1*
T0*
_output_shapes
:	@�
f
lm/rnn/while/Identity_6Identitylm/rnn/while/Switch_6:1*
T0*
_output_shapes
:	@�
l
lm/rnn/while/add/yConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
c
lm/rnn/while/addAddlm/rnn/while/Identitylm/rnn/while/add/y*
T0*
_output_shapes
: 
�
lm/rnn/while/TensorArrayReadV3TensorArrayReadV3$lm/rnn/while/TensorArrayReadV3/Enterlm/rnn/while/Identity_1&lm/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	@�
�
$lm/rnn/while/TensorArrayReadV3/EnterEnterlm/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
&lm/rnn/while/TensorArrayReadV3/Enter_1EnterAlm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context
�
Qrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
�
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB
 *���*
dtype0*
_output_shapes
: 
�
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Yrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformQrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
��*

seed *
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
�
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/subSubOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
: 
�
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulYrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
��*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
�
Krnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniformAddOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min* 
_output_shapes
:
��*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
�
0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
VariableV2*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name 
�
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignAssign0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernelKrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
��
�
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/readIdentity0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
T0* 
_output_shapes
:
��
�
@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zerosConst*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias
VariableV2*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�*
shared_name 
�
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignAssign.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros*
_output_shapes	
:�*
use_locking(*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(
�
3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/readIdentity.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
T0*
_output_shapes	
:�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/ConstConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
Blm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axisConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concatConcatV2lm/rnn/while/TensorArrayReadV3lm/rnn/while/Identity_4Blm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:	@�
�
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMulMatMul=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concatClm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter*
T0*
_output_shapes
:	@�*
transpose_a( *
transpose_b( 
�
Clm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/EnterEnter5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
��**

frame_namelm/rnn/while/while_context
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAddBiasAdd=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMulDlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	@�
�
Dlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/EnterEnter3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:�**

frame_namelm/rnn/while/while_context
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1Const^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/splitSplit<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd*
T0*@
_output_shapes.
,:	@�:	@�:	@�:	@�*
	num_split
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2Const^lm/rnn/while/Identity*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
:lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/AddAdd>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:2>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2*
_output_shapes
:	@�*
T0
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/SigmoidSigmoid:lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add*
T0*
_output_shapes
:	@�
�
:lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MulMullm/rnn/while/Identity_3>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
T0*
_output_shapes
:	@�
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1Sigmoid<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split*
T0*
_output_shapes
:	@�
�
;lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/TanhTanh>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:1*
_output_shapes
:	@�*
T0
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1Mul@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1;lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
T0*
_output_shapes
:	@�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1Add:lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1*
_output_shapes
:	@�*
T0
�
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1Tanh<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*
T0*
_output_shapes
:	@�
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2Sigmoid>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:3*
_output_shapes
:	@�*
T0
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2Mul=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
T0*
_output_shapes
:	@�
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3Const^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
Dlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axisConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1ConcatV2<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2lm/rnn/while/Identity_6Dlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axis*
T0*
N*
_output_shapes
:	@�*

Tidx0
�
?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1MatMul?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1Clm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter*
T0*
_output_shapes
:	@�*
transpose_a( *
transpose_b( 
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1BiasAdd?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1Dlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter*
data_formatNHWC*
_output_shapes
:	@�*
T0
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_4Const^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1Split>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1*
T0*@
_output_shapes.
,:	@�:	@�:	@�:	@�*
	num_split
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_5Const^lm/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2Add@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:2>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_5*
_output_shapes
:	@�*
T0
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3Sigmoid<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2*
T0*
_output_shapes
:	@�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3Mullm/rnn/while/Identity_5@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3*
_output_shapes
:	@�*
T0
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4Sigmoid>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1*
T0*
_output_shapes
:	@�
�
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2Tanh@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:1*
T0*
_output_shapes
:	@�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4Mul@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2*
T0*
_output_shapes
:	@�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3Add<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4*
_output_shapes
:	@�*
T0
�
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3Tanh<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3*
T0*
_output_shapes
:	@�
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5Sigmoid@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:3*
_output_shapes
:	@�*
T0
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5Mul=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5*
_output_shapes
:	@�*
T0
�
0lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV36lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterlm/rnn/while/Identity_1<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5lm/rnn/while/Identity_2*
T0*O
_classE
CAloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
_output_shapes
: 
�
6lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlm/rnn/TensorArray*
is_constant(*
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0*O
_classE
CAloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
parallel_iterations 
n
lm/rnn/while/add_1/yConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
i
lm/rnn/while/add_1Addlm/rnn/while/Identity_1lm/rnn/while/add_1/y*
_output_shapes
: *
T0
^
lm/rnn/while/NextIterationNextIterationlm/rnn/while/add*
_output_shapes
: *
T0
b
lm/rnn/while/NextIteration_1NextIterationlm/rnn/while/add_1*
_output_shapes
: *
T0
�
lm/rnn/while/NextIteration_2NextIteration0lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
�
lm/rnn/while/NextIteration_3NextIteration<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*
T0*
_output_shapes
:	@�
�
lm/rnn/while/NextIteration_4NextIteration<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
_output_shapes
:	@�*
T0
�
lm/rnn/while/NextIteration_5NextIteration<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3*
_output_shapes
:	@�*
T0
�
lm/rnn/while/NextIteration_6NextIteration<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
T0*
_output_shapes
:	@�
O
lm/rnn/while/ExitExitlm/rnn/while/Switch*
_output_shapes
: *
T0
S
lm/rnn/while/Exit_1Exitlm/rnn/while/Switch_1*
T0*
_output_shapes
: 
S
lm/rnn/while/Exit_2Exitlm/rnn/while/Switch_2*
T0*
_output_shapes
: 
\
lm/rnn/while/Exit_3Exitlm/rnn/while/Switch_3*
_output_shapes
:	@�*
T0
\
lm/rnn/while/Exit_4Exitlm/rnn/while/Switch_4*
T0*
_output_shapes
:	@�
\
lm/rnn/while/Exit_5Exitlm/rnn/while/Switch_5*
T0*
_output_shapes
:	@�
\
lm/rnn/while/Exit_6Exitlm/rnn/while/Switch_6*
T0*
_output_shapes
:	@�
�
)lm/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lm/rnn/TensorArraylm/rnn/while/Exit_2*
_output_shapes
: *%
_class
loc:@lm/rnn/TensorArray
�
#lm/rnn/TensorArrayStack/range/startConst*%
_class
loc:@lm/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
�
#lm/rnn/TensorArrayStack/range/deltaConst*%
_class
loc:@lm/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
�
lm/rnn/TensorArrayStack/rangeRange#lm/rnn/TensorArrayStack/range/start)lm/rnn/TensorArrayStack/TensorArraySizeV3#lm/rnn/TensorArrayStack/range/delta*%
_class
loc:@lm/rnn/TensorArray*#
_output_shapes
:���������*

Tidx0
�
+lm/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lm/rnn/TensorArraylm/rnn/TensorArrayStack/rangelm/rnn/while/Exit_2*,
_output_shapes
:���������@�*
element_shape:	@�*%
_class
loc:@lm/rnn/TensorArray*
dtype0
Y
lm/rnn/Const_2Const*
valueB:�*
dtype0*
_output_shapes
:
O
lm/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
V
lm/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
V
lm/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
z
lm/rnn/range_1Rangelm/rnn/range_1/startlm/rnn/Rank_1lm/rnn/range_1/delta*
_output_shapes
:*

Tidx0
i
lm/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
V
lm/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
lm/rnn/concat_2ConcatV2lm/rnn/concat_2/values_0lm/rnn/range_1lm/rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
lm/rnn/transpose_1	Transpose+lm/rnn/TensorArrayStack/TensorArrayGatherV3lm/rnn/concat_2*
T0*,
_output_shapes
:@����������*
Tperm0
a
lm/Reshape/shapeConst*
valueB"�����   *
dtype0*
_output_shapes
:
|

lm/ReshapeReshapelm/rnn/transpose_1lm/Reshape/shape*(
_output_shapes
:����������*
T0*
Tshape0
�
*softmax_w/Initializer/random_uniform/shapeConst*
_output_shapes
:*
_class
loc:@softmax_w*
valueB"�   �  *
dtype0
�
(softmax_w/Initializer/random_uniform/minConst*
_class
loc:@softmax_w*
valueB
 *Y��*
dtype0*
_output_shapes
: 
�
(softmax_w/Initializer/random_uniform/maxConst*
_class
loc:@softmax_w*
valueB
 *Y�<*
dtype0*
_output_shapes
: 
�
2softmax_w/Initializer/random_uniform/RandomUniformRandomUniform*softmax_w/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@softmax_w*
seed2 *
dtype0* 
_output_shapes
:
��/
�
(softmax_w/Initializer/random_uniform/subSub(softmax_w/Initializer/random_uniform/max(softmax_w/Initializer/random_uniform/min*
T0*
_class
loc:@softmax_w*
_output_shapes
: 
�
(softmax_w/Initializer/random_uniform/mulMul2softmax_w/Initializer/random_uniform/RandomUniform(softmax_w/Initializer/random_uniform/sub*
T0*
_class
loc:@softmax_w* 
_output_shapes
:
��/
�
$softmax_w/Initializer/random_uniformAdd(softmax_w/Initializer/random_uniform/mul(softmax_w/Initializer/random_uniform/min*
T0*
_class
loc:@softmax_w* 
_output_shapes
:
��/
�
	softmax_w
VariableV2*
shared_name *
_class
loc:@softmax_w*
	container *
shape:
��/*
dtype0* 
_output_shapes
:
��/
�
softmax_w/AssignAssign	softmax_w$softmax_w/Initializer/random_uniform* 
_output_shapes
:
��/*
use_locking(*
T0*
_class
loc:@softmax_w*
validate_shape(
n
softmax_w/readIdentity	softmax_w*
T0*
_class
loc:@softmax_w* 
_output_shapes
:
��/
�
*softmax_b/Initializer/random_uniform/shapeConst*
_class
loc:@softmax_b*
valueB:�/*
dtype0*
_output_shapes
:
�
(softmax_b/Initializer/random_uniform/minConst*
_class
loc:@softmax_b*
valueB
 *����*
dtype0*
_output_shapes
: 
�
(softmax_b/Initializer/random_uniform/maxConst*
_class
loc:@softmax_b*
valueB
 *���<*
dtype0*
_output_shapes
: 
�
2softmax_b/Initializer/random_uniform/RandomUniformRandomUniform*softmax_b/Initializer/random_uniform/shape*
dtype0*
_output_shapes	
:�/*

seed *
T0*
_class
loc:@softmax_b*
seed2 
�
(softmax_b/Initializer/random_uniform/subSub(softmax_b/Initializer/random_uniform/max(softmax_b/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@softmax_b
�
(softmax_b/Initializer/random_uniform/mulMul2softmax_b/Initializer/random_uniform/RandomUniform(softmax_b/Initializer/random_uniform/sub*
_class
loc:@softmax_b*
_output_shapes	
:�/*
T0
�
$softmax_b/Initializer/random_uniformAdd(softmax_b/Initializer/random_uniform/mul(softmax_b/Initializer/random_uniform/min*
_output_shapes	
:�/*
T0*
_class
loc:@softmax_b
�
	softmax_b
VariableV2*
dtype0*
_output_shapes	
:�/*
shared_name *
_class
loc:@softmax_b*
	container *
shape:�/
�
softmax_b/AssignAssign	softmax_b$softmax_b/Initializer/random_uniform*
T0*
_class
loc:@softmax_b*
validate_shape(*
_output_shapes	
:�/*
use_locking(
i
softmax_b/readIdentity	softmax_b*
T0*
_class
loc:@softmax_b*
_output_shapes	
:�/
�
softmax/MatMulMatMul
lm/Reshapesoftmax_w/read*
T0*(
_output_shapes
:����������/*
transpose_a( *
transpose_b( 
�
softmax/BiasAddBiasAddsoftmax/MatMulsoftmax_b/read*
data_formatNHWC*(
_output_shapes
:����������/*
T0
`
Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
r
ReshapeReshapeinput/Placeholder_1Reshape/shape*#
_output_shapes
:���������*
T0*
Tshape0
U
one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
V
one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
P
one_hot/depthConst*
_output_shapes
: *
value
B :�/*
dtype0
�
one_hotOneHotReshapeone_hot/depthone_hot/on_valueone_hot/off_value*
T0*
axis���������*
TI0*(
_output_shapes
:����������/
�
>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradientone_hot*
T0*(
_output_shapes
:����������/
p
.loss/softmax_cross_entropy_with_logits_sg/RankConst*
value	B :*
dtype0*
_output_shapes
: 
~
/loss/softmax_cross_entropy_with_logits_sg/ShapeShapesoftmax/BiasAdd*
T0*
out_type0*
_output_shapes
:
r
0loss/softmax_cross_entropy_with_logits_sg/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
�
1loss/softmax_cross_entropy_with_logits_sg/Shape_1Shapesoftmax/BiasAdd*
out_type0*
_output_shapes
:*
T0
q
/loss/softmax_cross_entropy_with_logits_sg/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
-loss/softmax_cross_entropy_with_logits_sg/SubSub0loss/softmax_cross_entropy_with_logits_sg/Rank_1/loss/softmax_cross_entropy_with_logits_sg/Sub/y*
T0*
_output_shapes
: 
�
5loss/softmax_cross_entropy_with_logits_sg/Slice/beginPack-loss/softmax_cross_entropy_with_logits_sg/Sub*
T0*

axis *
N*
_output_shapes
:
~
4loss/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
/loss/softmax_cross_entropy_with_logits_sg/SliceSlice1loss/softmax_cross_entropy_with_logits_sg/Shape_15loss/softmax_cross_entropy_with_logits_sg/Slice/begin4loss/softmax_cross_entropy_with_logits_sg/Slice/size*
Index0*
T0*
_output_shapes
:
�
9loss/softmax_cross_entropy_with_logits_sg/concat/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
w
5loss/softmax_cross_entropy_with_logits_sg/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
0loss/softmax_cross_entropy_with_logits_sg/concatConcatV29loss/softmax_cross_entropy_with_logits_sg/concat/values_0/loss/softmax_cross_entropy_with_logits_sg/Slice5loss/softmax_cross_entropy_with_logits_sg/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
1loss/softmax_cross_entropy_with_logits_sg/ReshapeReshapesoftmax/BiasAdd0loss/softmax_cross_entropy_with_logits_sg/concat*0
_output_shapes
:������������������*
T0*
Tshape0
r
0loss/softmax_cross_entropy_with_logits_sg/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
�
1loss/softmax_cross_entropy_with_logits_sg/Shape_2Shape>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
out_type0*
_output_shapes
:*
T0
s
1loss/softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
/loss/softmax_cross_entropy_with_logits_sg/Sub_1Sub0loss/softmax_cross_entropy_with_logits_sg/Rank_21loss/softmax_cross_entropy_with_logits_sg/Sub_1/y*
T0*
_output_shapes
: 
�
7loss/softmax_cross_entropy_with_logits_sg/Slice_1/beginPack/loss/softmax_cross_entropy_with_logits_sg/Sub_1*
N*
_output_shapes
:*
T0*

axis 
�
6loss/softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
1loss/softmax_cross_entropy_with_logits_sg/Slice_1Slice1loss/softmax_cross_entropy_with_logits_sg/Shape_27loss/softmax_cross_entropy_with_logits_sg/Slice_1/begin6loss/softmax_cross_entropy_with_logits_sg/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
;loss/softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
y
7loss/softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
2loss/softmax_cross_entropy_with_logits_sg/concat_1ConcatV2;loss/softmax_cross_entropy_with_logits_sg/concat_1/values_01loss/softmax_cross_entropy_with_logits_sg/Slice_17loss/softmax_cross_entropy_with_logits_sg/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
3loss/softmax_cross_entropy_with_logits_sg/Reshape_1Reshape>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradient2loss/softmax_cross_entropy_with_logits_sg/concat_1*
T0*
Tshape0*0
_output_shapes
:������������������
�
)loss/softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits1loss/softmax_cross_entropy_with_logits_sg/Reshape3loss/softmax_cross_entropy_with_logits_sg/Reshape_1*?
_output_shapes-
+:���������:������������������*
T0
s
1loss/softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
/loss/softmax_cross_entropy_with_logits_sg/Sub_2Sub.loss/softmax_cross_entropy_with_logits_sg/Rank1loss/softmax_cross_entropy_with_logits_sg/Sub_2/y*
T0*
_output_shapes
: 
�
7loss/softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
6loss/softmax_cross_entropy_with_logits_sg/Slice_2/sizePack/loss/softmax_cross_entropy_with_logits_sg/Sub_2*
N*
_output_shapes
:*
T0*

axis 
�
1loss/softmax_cross_entropy_with_logits_sg/Slice_2Slice/loss/softmax_cross_entropy_with_logits_sg/Shape7loss/softmax_cross_entropy_with_logits_sg/Slice_2/begin6loss/softmax_cross_entropy_with_logits_sg/Slice_2/size*#
_output_shapes
:���������*
Index0*
T0
�
3loss/softmax_cross_entropy_with_logits_sg/Reshape_2Reshape)loss/softmax_cross_entropy_with_logits_sg1loss/softmax_cross_entropy_with_logits_sg/Slice_2*
T0*
Tshape0*#
_output_shapes
:���������
T

loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
	loss/MeanMean3loss/softmax_cross_entropy_with_logits_sg/Reshape_2
loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
R
loss_1/tagsConst*
_output_shapes
: *
valueB Bloss_1*
dtype0
P
loss_1ScalarSummaryloss_1/tags	loss/Mean*
T0*
_output_shapes
: 
�
train/gradients/ShapeShape3loss/softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
out_type0*
_output_shapes
:
^
train/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/grad_ys_0*
T0*

index_type0*#
_output_shapes
:���������
Y
train/gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
�
train/gradients/f_count_1Entertrain/gradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context
�
train/gradients/MergeMergetrain/gradients/f_count_1train/gradients/NextIteration*
_output_shapes
: : *
T0*
N
q
train/gradients/SwitchSwitchtrain/gradients/Mergelm/rnn/while/LoopCond*
_output_shapes
: : *
T0
o
train/gradients/Add/yConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
l
train/gradients/AddAddtrain/gradients/Switch:1train/gradients/Add/y*
T0*
_output_shapes
: 
�
train/gradients/NextIterationNextIterationtrain/gradients/Addd^train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2j^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2h^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2d^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2d^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPushV2d^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPushV2d^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPushV2d^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPushV2`^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2*
_output_shapes
: *
T0
Z
train/gradients/f_count_2Exittrain/gradients/Switch*
_output_shapes
: *
T0
Y
train/gradients/b_countConst*
_output_shapes
: *
value	B :*
dtype0
�
train/gradients/b_count_1Entertrain/gradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*train/gradients/lm/rnn/while/while_context
�
train/gradients/Merge_1Mergetrain/gradients/b_count_1train/gradients/NextIteration_1*
N*
_output_shapes
: : *
T0
�
train/gradients/GreaterEqualGreaterEqualtrain/gradients/Merge_1"train/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
�
"train/gradients/GreaterEqual/EnterEntertrain/gradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *:

frame_name,*train/gradients/lm/rnn/while/while_context
[
train/gradients/b_count_2LoopCondtrain/gradients/GreaterEqual*
_output_shapes
: 
y
train/gradients/Switch_1Switchtrain/gradients/Merge_1train/gradients/b_count_2*
T0*
_output_shapes
: : 
{
train/gradients/SubSubtrain/gradients/Switch_1:1"train/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
�
train/gradients/NextIteration_1NextIterationtrain/gradients/Sub_^train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
\
train/gradients/b_count_3Exittrain/gradients/Switch_1*
T0*
_output_shapes
: 
�
Ntrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ShapeShape)loss/softmax_cross_entropy_with_logits_sg*
_output_shapes
:*
T0*
out_type0
�
Ptrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeReshapetrain/gradients/FillNtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
train/gradients/zeros_like	ZerosLike+loss/softmax_cross_entropy_with_logits_sg:1*
T0*0
_output_shapes
:������������������
�
Mtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Itrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims
ExpandDimsPtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeMtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
Btrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mulMulItrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims+loss/softmax_cross_entropy_with_logits_sg:1*0
_output_shapes
:������������������*
T0
�
Itrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax
LogSoftmax1loss/softmax_cross_entropy_with_logits_sg/Reshape*0
_output_shapes
:������������������*
T0
�
Btrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/NegNegItrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax*
T0*0
_output_shapes
:������������������
�
Otrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Ktrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1
ExpandDimsPtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeOtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dim*
T0*'
_output_shapes
:���������*

Tdim0
�
Dtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul_1MulKtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1Btrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/Neg*
T0*0
_output_shapes
:������������������
�
Ltrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/ShapeShapesoftmax/BiasAdd*
_output_shapes
:*
T0*
out_type0
�
Ntrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeReshapeBtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mulLtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Shape*
T0*
Tshape0*(
_output_shapes
:����������/
�
0train/gradients/softmax/BiasAdd_grad/BiasAddGradBiasAddGradNtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes	
:�/
�
*train/gradients/softmax/MatMul_grad/MatMulMatMulNtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshapesoftmax_w/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
,train/gradients/softmax/MatMul_grad/MatMul_1MatMul
lm/ReshapeNtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape*
transpose_b( *
T0* 
_output_shapes
:
��/*
transpose_a(
w
%train/gradients/lm/Reshape_grad/ShapeShapelm/rnn/transpose_1*
T0*
out_type0*
_output_shapes
:
�
'train/gradients/lm/Reshape_grad/ReshapeReshape*train/gradients/softmax/MatMul_grad/MatMul%train/gradients/lm/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:@����������
�
9train/gradients/lm/rnn/transpose_1_grad/InvertPermutationInvertPermutationlm/rnn/concat_2*
_output_shapes
:*
T0
�
1train/gradients/lm/rnn/transpose_1_grad/transpose	Transpose'train/gradients/lm/Reshape_grad/Reshape9train/gradients/lm/rnn/transpose_1_grad/InvertPermutation*
T0*,
_output_shapes
:���������@�*
Tperm0
�
btrain/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3lm/rnn/TensorArraylm/rnn/while/Exit_2*%
_class
loc:@lm/rnn/TensorArray*
sourcetrain/gradients*
_output_shapes

:: 
�
^train/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentitylm/rnn/while/Exit_2c^train/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*%
_class
loc:@lm/rnn/TensorArray*
_output_shapes
: *
T0
�
htrain/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3btrain/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3lm/rnn/TensorArrayStack/range1train/gradients/lm/rnn/transpose_1_grad/transpose^train/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
v
%train/gradients/zeros/shape_as_tensorConst*
valueB"@   �   *
dtype0*
_output_shapes
:
`
train/gradients/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
train/gradients/zerosFill%train/gradients/zeros/shape_as_tensortrain/gradients/zeros/Const*
_output_shapes
:	@�*
T0*

index_type0
x
'train/gradients/zeros_1/shape_as_tensorConst*
valueB"@   �   *
dtype0*
_output_shapes
:
b
train/gradients/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
train/gradients/zeros_1Fill'train/gradients/zeros_1/shape_as_tensortrain/gradients/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	@�
x
'train/gradients/zeros_2/shape_as_tensorConst*
valueB"@   �   *
dtype0*
_output_shapes
:
b
train/gradients/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
train/gradients/zeros_2Fill'train/gradients/zeros_2/shape_as_tensortrain/gradients/zeros_2/Const*
_output_shapes
:	@�*
T0*

index_type0
x
'train/gradients/zeros_3/shape_as_tensorConst*
valueB"@   �   *
dtype0*
_output_shapes
:
b
train/gradients/zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
train/gradients/zeros_3Fill'train/gradients/zeros_3/shape_as_tensortrain/gradients/zeros_3/Const*
T0*

index_type0*
_output_shapes
:	@�
�
/train/gradients/lm/rnn/while/Exit_2_grad/b_exitEnterhtrain/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*train/gradients/lm/rnn/while/while_context
�
/train/gradients/lm/rnn/while/Exit_3_grad/b_exitEntertrain/gradients/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
/train/gradients/lm/rnn/while/Exit_4_grad/b_exitEntertrain/gradients/zeros_1*
parallel_iterations *
_output_shapes
:	@�*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*
is_constant( 
�
/train/gradients/lm/rnn/while/Exit_5_grad/b_exitEntertrain/gradients/zeros_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
/train/gradients/lm/rnn/while/Exit_6_grad/b_exitEntertrain/gradients/zeros_3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
3train/gradients/lm/rnn/while/Switch_2_grad/b_switchMerge/train/gradients/lm/rnn/while/Exit_2_grad/b_exit:train/gradients/lm/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
�
3train/gradients/lm/rnn/while/Switch_3_grad/b_switchMerge/train/gradients/lm/rnn/while/Exit_3_grad/b_exit:train/gradients/lm/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	@�: 
�
3train/gradients/lm/rnn/while/Switch_4_grad/b_switchMerge/train/gradients/lm/rnn/while/Exit_4_grad/b_exit:train/gradients/lm/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	@�: 
�
3train/gradients/lm/rnn/while/Switch_5_grad/b_switchMerge/train/gradients/lm/rnn/while/Exit_5_grad/b_exit:train/gradients/lm/rnn/while/Switch_5_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	@�: 
�
3train/gradients/lm/rnn/while/Switch_6_grad/b_switchMerge/train/gradients/lm/rnn/while/Exit_6_grad/b_exit:train/gradients/lm/rnn/while/Switch_6_grad_1/NextIteration*
N*!
_output_shapes
:	@�: *
T0
�
0train/gradients/lm/rnn/while/Merge_2_grad/SwitchSwitch3train/gradients/lm/rnn/while/Switch_2_grad/b_switchtrain/gradients/b_count_2*
_output_shapes
: : *
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_2_grad/b_switch
�
0train/gradients/lm/rnn/while/Merge_3_grad/SwitchSwitch3train/gradients/lm/rnn/while/Switch_3_grad/b_switchtrain/gradients/b_count_2*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_3_grad/b_switch**
_output_shapes
:	@�:	@�
�
0train/gradients/lm/rnn/while/Merge_4_grad/SwitchSwitch3train/gradients/lm/rnn/while/Switch_4_grad/b_switchtrain/gradients/b_count_2*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_4_grad/b_switch**
_output_shapes
:	@�:	@�
�
0train/gradients/lm/rnn/while/Merge_5_grad/SwitchSwitch3train/gradients/lm/rnn/while/Switch_5_grad/b_switchtrain/gradients/b_count_2*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_5_grad/b_switch**
_output_shapes
:	@�:	@�
�
0train/gradients/lm/rnn/while/Merge_6_grad/SwitchSwitch3train/gradients/lm/rnn/while/Switch_6_grad/b_switchtrain/gradients/b_count_2**
_output_shapes
:	@�:	@�*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_6_grad/b_switch
�
.train/gradients/lm/rnn/while/Enter_2_grad/ExitExit0train/gradients/lm/rnn/while/Merge_2_grad/Switch*
_output_shapes
: *
T0
�
.train/gradients/lm/rnn/while/Enter_3_grad/ExitExit0train/gradients/lm/rnn/while/Merge_3_grad/Switch*
T0*
_output_shapes
:	@�
�
.train/gradients/lm/rnn/while/Enter_4_grad/ExitExit0train/gradients/lm/rnn/while/Merge_4_grad/Switch*
T0*
_output_shapes
:	@�
�
.train/gradients/lm/rnn/while/Enter_5_grad/ExitExit0train/gradients/lm/rnn/while/Merge_5_grad/Switch*
T0*
_output_shapes
:	@�
�
.train/gradients/lm/rnn/while/Enter_6_grad/ExitExit0train/gradients/lm/rnn/while/Merge_6_grad/Switch*
_output_shapes
:	@�*
T0
�
gtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3mtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter2train/gradients/lm/rnn/while/Merge_2_grad/Switch:1*O
_classE
CAloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
sourcetrain/gradients*
_output_shapes

:: 
�
mtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterlm/rnn/TensorArray*
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*O
_classE
CAloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
parallel_iterations *
is_constant(
�
ctrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity2train/gradients/lm/rnn/while/Merge_2_grad/Switch:1h^train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*O
_classE
CAloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
_output_shapes
: 
�
Wtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3gtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3btrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2ctrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
_output_shapes
:	@�*
dtype0
�
]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst**
_class 
loc:@lm/rnn/while/Identity_1*
valueB :
���������*
dtype0*
_output_shapes
: 
�
]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const**
_class 
loc:@lm/rnn/while/Identity_1*

stack_name *
_output_shapes
:*
	elem_type0
�
]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnter]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
ctrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterlm/rnn/while/Identity_1^train/gradients/Add*
_output_shapes
: *
swap_memory( *
T0
�
btrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
: *
	elem_type0
�
htrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
^train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerc^train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2i^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2g^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2c^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2c^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2c^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2c^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2c^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2_^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2
�
train/gradients/AddNAddN2train/gradients/lm/rnn/while/Merge_6_grad/Switch:1Wtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_6_grad/b_switch*
N*
_output_shapes
:	@�
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/MulMultrain/gradients/AddN`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2*
T0*
_output_shapes
:	@�
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/ConstConst*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5*
valueB :
���������*
dtype0*
_output_shapes
: 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/Const*
_output_shapes
:*
	elem_type0*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5*

stack_name 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/Enter@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1Multrain/gradients/AddNbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2*
_output_shapes
:	@�*
T0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/ConstConst*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3*
valueB :
���������*
dtype0*
_output_shapes
: 
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/f_accStackV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/Const*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3*

stack_name *
_output_shapes
:*
	elem_type0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPushV2StackPushV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/Enter=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3_grad/TanhGradTanhGradbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul*
T0*
_output_shapes
:	@�
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5_grad/SigmoidGradSigmoidGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1*
_output_shapes
:	@�*
T0
�
:train/gradients/lm/rnn/while/Switch_2_grad_1/NextIterationNextIteration2train/gradients/lm/rnn/while/Merge_2_grad/Switch:1*
_output_shapes
: *
T0
�
train/gradients/AddN_1AddN2train/gradients/lm/rnn/while/Merge_5_grad/Switch:1[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3_grad/TanhGrad*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_5_grad/b_switch*
N*
_output_shapes
:	@�*
T0
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/MulMultrain/gradients/AddN_1`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2*
T0*
_output_shapes
:	@�
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/ConstConst*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3*
valueB :
���������*
dtype0*
_output_shapes
: 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/Const*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3*

stack_name *
_output_shapes
:*
	elem_type0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/f_acc*
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/Enter@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1Multrain/gradients/AddN_1btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	@�
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/ConstConst**
_class 
loc:@lm/rnn/while/Identity_5*
valueB :
���������*
dtype0*
_output_shapes
: 
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/f_accStackV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/Const*
	elem_type0**
_class 
loc:@lm/rnn/while/Identity_5*

stack_name *
_output_shapes
:
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/f_acc*
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPushV2StackPushV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/Enterlm/rnn/while/Identity_5^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/MulMultrain/gradients/AddN_1`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2*
T0*
_output_shapes
:	@�
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/ConstConst*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2*
valueB :
���������*
dtype0*
_output_shapes
: 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/Const*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2*

stack_name *
_output_shapes
:*
	elem_type0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/Enter=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*
is_constant(
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1Multrain/gradients/AddN_1btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	@�
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/ConstConst*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4*
valueB :
���������*
dtype0*
_output_shapes
: 
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/f_accStackV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/Const*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4*

stack_name *
_output_shapes
:*
	elem_type0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPushV2StackPushV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/Enter@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_grad/SigmoidGradSigmoidGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1*
T0*
_output_shapes
:	@�
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4_grad/SigmoidGradSigmoidGradbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul*
T0*
_output_shapes
:	@�
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2_grad/TanhGradTanhGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1*
T0*
_output_shapes
:	@�
�
:train/gradients/lm/rnn/while/Switch_5_grad_1/NextIterationNextIterationUtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul*
T0*
_output_shapes
:	@�
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/ShapeConst^train/gradients/Sub*
valueB"@   �   *
dtype0*
_output_shapes
:
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Shape_1Const^train/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
�
gtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/ShapeYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/SumSumatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_grad/SigmoidGradgtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/ReshapeReshapeUtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/SumWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Shape*
Tshape0*
_output_shapes
:	@�*
T0
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Sum_1Sumatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_grad/SigmoidGraditrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Reshape_1ReshapeWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Sum_1Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concatConcatV2atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4_grad/SigmoidGrad[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2_grad/TanhGradYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Reshapeatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5_grad/SigmoidGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat/Const*
T0*
N*
_output_shapes
:	@�*

Tidx0
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat/ConstConst^train/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1_grad/BiasAddGradBiasAddGradZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat*
_output_shapes	
:�*
T0*
data_formatNHWC
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMulMatMulZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concatatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul/Enter*
T0*
_output_shapes
:	@�*
transpose_a( *
transpose_b(
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul/EnterEnter5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
��*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1MatMulhtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/ConstConst*R
_classH
FDloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1*
valueB :
���������*
dtype0*
_output_shapes
: 
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/f_accStackV2ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/Const*
_output_shapes
:*
	elem_type0*R
_classH
FDloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1*

stack_name 
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/EnterEnterctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0*
is_constant(
�
itrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/Enter?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2ntrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ntrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConstConst^train/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/RankConst^train/gradients/Sub*
_output_shapes
: *
value	B :*
dtype0
�
Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/modFloorModZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConstYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Rank*
T0*
_output_shapes
: 
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ShapeConst^train/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"@   �   
�
\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape_1Const^train/gradients/Sub*
valueB"@   �   *
dtype0*
_output_shapes
:
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConcatOffsetConcatOffsetXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/modZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape_1*
N* 
_output_shapes
::
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/SliceSlice[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMulatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConcatOffsetZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape*
_output_shapes
:	@�*
Index0*
T0
�
\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Slice_1Slice[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMulctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConcatOffset:1\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape_1*
Index0*
T0*
_output_shapes
:	@�
�
train/gradients/AddN_2AddN2train/gradients/lm/rnn/while/Merge_4_grad/Switch:1Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Slice*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_4_grad/b_switch*
N*
_output_shapes
:	@�
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/MulMultrain/gradients/AddN_2`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2*
T0*
_output_shapes
:	@�
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/ConstConst*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
valueB :
���������*
dtype0*
_output_shapes
: 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Enter@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1Multrain/gradients/AddN_2btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	@�
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*
valueB :
���������
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_accStackV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Const*
_output_shapes
:*
	elem_type0*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*

stack_name 
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2StackPushV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Enter=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul*
T0*
_output_shapes
:	@�
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1*
T0*
_output_shapes
:	@�
�
:train/gradients/lm/rnn/while/Switch_6_grad_1/NextIterationNextIteration\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Slice_1*
T0*
_output_shapes
:	@�
�
train/gradients/AddN_3AddN2train/gradients/lm/rnn/while/Merge_3_grad/Switch:1[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGrad*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_3_grad/b_switch*
N*
_output_shapes
:	@�
�
Strain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/MulMultrain/gradients/AddN_3^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2*
T0*
_output_shapes
:	@�
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/ConstConst*Q
_classG
ECloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_accStackV2Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Const*Q
_classG
ECloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/EnterEnterYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2StackPushV2Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Enter>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2
StackPopV2dtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
	elem_type0*
_output_shapes
:	@�
�
dtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2/EnterEnterYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1Multrain/gradients/AddN_3`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2*
_output_shapes
:	@�*
T0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/ConstConst**
_class 
loc:@lm/rnn/while/Identity_3*
valueB :
���������*
dtype0*
_output_shapes
: 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/Const*
	elem_type0**
_class 
loc:@lm/rnn/while/Identity_3*

stack_name *
_output_shapes
:
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/Enterlm/rnn/while/Identity_3^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/MulMultrain/gradients/AddN_3`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2*
_output_shapes
:	@�*
T0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/ConstConst*
_output_shapes
: *N
_classD
B@loc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
valueB :
���������*
dtype0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Const*N
_classD
B@loc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Enter;lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1Multrain/gradients/AddN_3btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	@�
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*
valueB :
���������
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_accStackV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Const*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:*
	elem_type0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2StackPushV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Enter@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGrad^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1*
_output_shapes
:	@�*
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul*
_output_shapes
:	@�*
T0
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGradTanhGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1*
T0*
_output_shapes
:	@�
�
:train/gradients/lm/rnn/while/Switch_3_grad_1/NextIterationNextIterationStrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul*
_output_shapes
:	@�*
T0
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ShapeConst^train/gradients/Sub*
valueB"@   �   *
dtype0*
_output_shapes
:
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1Const^train/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
�
etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgsBroadcastGradientArgsUtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ShapeWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Strain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/SumSum_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradetrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ReshapeReshapeStrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/SumUtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape*
T0*
Tshape0*
_output_shapes
:	@�
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum_1Sum_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradgtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1ReshapeUtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum_1Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatConcatV2atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGradWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshapeatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGrad^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/Const*
T0*
N*
_output_shapes
:	@�*

Tidx0
�
^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/ConstConst^train/gradients/Sub*
_output_shapes
: *
value	B :*
dtype0
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:�
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulMatMulXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul/Enter*
_output_shapes
:	@�*
transpose_a( *
transpose_b(*
T0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1MatMulftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat* 
_output_shapes
:
��*
transpose_a(*
transpose_b( *
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/ConstConst*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat*
valueB :
���������*
dtype0*
_output_shapes
: 
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Const*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat*

stack_name *
_output_shapes
:*
	elem_type0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/EnterEnteratrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
gtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Enter=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2ltrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ltrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnteratrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*
is_constant(
�
train/gradients/AddN_4AddNatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1_grad/BiasAddGrad_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGrad*
T0*t
_classj
hfloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1_grad/BiasAddGrad*
N*
_output_shapes	
:�
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueB�*    *
dtype0*
_output_shapes	
:�
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1Enter_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
_output_shapes	
:�*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*
is_constant( *
parallel_iterations 
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergeatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1gtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:�: 
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2train/gradients/b_count_2*
T0*"
_output_shapes
:�:�
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/AddAddbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Switch:1train/gradients/AddN_4*
_output_shapes	
:�*
T0
�
gtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIteration]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Add*
_output_shapes	
:�*
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3Exit`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:�
�
Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConstConst^train/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/RankConst^train/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
�
Vtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/modFloorModXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConstWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeConst^train/gradients/Sub*
valueB"@   �   *
dtype0*
_output_shapes
:
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape_1Const^train/gradients/Sub*
valueB"@   �   *
dtype0*
_output_shapes
:
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffsetVtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/modXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/SliceSliceYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffsetXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes
:	@�
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1SliceYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffset:1Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes
:	@�
�
train/gradients/AddN_5AddN]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1*
T0*p
_classf
dbloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1*
N* 
_output_shapes
:
��
�
^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
��*    *
dtype0* 
_output_shapes
:
��
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_1Enter^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
��*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_2Merge`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_1ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/NextIteration*
N*"
_output_shapes
:
��: *
T0
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/SwitchSwitch`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_2train/gradients/b_count_2*
T0*,
_output_shapes
:
��:
��
�
\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/AddAddatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Switch:1train/gradients/AddN_5*
T0* 
_output_shapes
:
��
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIteration\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
��
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3Exit_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
��
�
Utrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3[train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter]train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^train/gradients/Sub*
_output_shapes

:: *7
_class-
+)loc:@lm/rnn/while/TensorArrayReadV3/Enter*
sourcetrain/gradients
�
[train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterlm/rnn/TensorArray_1*
T0*7
_class-
+)loc:@lm/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
]train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterAlm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*7
_class-
+)loc:@lm/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
: *:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Qtrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentity]train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1V^train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*7
_class-
+)loc:@lm/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: *
T0
�
Wtrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Utrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3btrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/SliceQtrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
�
Atrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ctrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterAtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Ctrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeCtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Itrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
N*
_output_shapes
: : *
T0
�
Btrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchCtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2train/gradients/b_count_2*
_output_shapes
: : *
T0
�
?train/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddDtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Wtrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
�
Itrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration?train/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
�
Ctrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitBtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
�
:train/gradients/lm/rnn/while/Switch_4_grad_1/NextIterationNextIterationZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1*
_output_shapes
:	@�*
T0
�
xtrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3lm/rnn/TensorArray_1Ctrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*'
_class
loc:@lm/rnn/TensorArray_1*
sourcetrain/gradients*
_output_shapes

:: 
�
ttrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityCtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3y^train/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*'
_class
loc:@lm/rnn/TensorArray_1
�
jtrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3xtrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3lm/rnn/TensorArrayUnstack/rangettrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*,
_output_shapes
:���������@�*
element_shape:
�
7train/gradients/lm/rnn/transpose_grad/InvertPermutationInvertPermutationlm/rnn/concat*
_output_shapes
:*
T0
�
/train/gradients/lm/rnn/transpose_grad/transpose	Transposejtrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV37train/gradients/lm/rnn/transpose_grad/InvertPermutation*
T0*,
_output_shapes
:@����������*
Tperm0
�
.train/gradients/lm/embedding_lookup_grad/ShapeConst*
_class
loc:@embedding*%
valueB	"�      �       *
dtype0	*
_output_shapes
:
�
0train/gradients/lm/embedding_lookup_grad/ToInt32Cast.train/gradients/lm/embedding_lookup_grad/Shape*

SrcT0	*
_class
loc:@embedding*
_output_shapes
:*

DstT0
y
-train/gradients/lm/embedding_lookup_grad/SizeSizeinput/Placeholder*
T0*
out_type0*
_output_shapes
: 
y
7train/gradients/lm/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
3train/gradients/lm/embedding_lookup_grad/ExpandDims
ExpandDims-train/gradients/lm/embedding_lookup_grad/Size7train/gradients/lm/embedding_lookup_grad/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
�
<train/gradients/lm/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
>train/gradients/lm/embedding_lookup_grad/strided_slice/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
�
>train/gradients/lm/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
6train/gradients/lm/embedding_lookup_grad/strided_sliceStridedSlice0train/gradients/lm/embedding_lookup_grad/ToInt32<train/gradients/lm/embedding_lookup_grad/strided_slice/stack>train/gradients/lm/embedding_lookup_grad/strided_slice/stack_1>train/gradients/lm/embedding_lookup_grad/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
v
4train/gradients/lm/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
/train/gradients/lm/embedding_lookup_grad/concatConcatV23train/gradients/lm/embedding_lookup_grad/ExpandDims6train/gradients/lm/embedding_lookup_grad/strided_slice4train/gradients/lm/embedding_lookup_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
0train/gradients/lm/embedding_lookup_grad/ReshapeReshape/train/gradients/lm/rnn/transpose_grad/transpose/train/gradients/lm/embedding_lookup_grad/concat*
T0*
Tshape0*(
_output_shapes
:����������
�
2train/gradients/lm/embedding_lookup_grad/Reshape_1Reshapeinput/Placeholder3train/gradients/lm/embedding_lookup_grad/ExpandDims*#
_output_shapes
:���������*
T0*
Tshape0
�
train/global_norm/L2LossL2Loss0train/gradients/lm/embedding_lookup_grad/Reshape*
T0*C
_class9
75loc:@train/gradients/lm/embedding_lookup_grad/Reshape*
_output_shapes
: 
�
train/global_norm/L2Loss_1L2Loss`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*s
_classi
geloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
_output_shapes
: 
�
train/global_norm/L2Loss_2L2Lossatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes
: *
T0*t
_classj
hfloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3
�
train/global_norm/L2Loss_3L2Loss,train/gradients/softmax/MatMul_grad/MatMul_1*
T0*?
_class5
31loc:@train/gradients/softmax/MatMul_grad/MatMul_1*
_output_shapes
: 
�
train/global_norm/L2Loss_4L2Loss0train/gradients/softmax/BiasAdd_grad/BiasAddGrad*C
_class9
75loc:@train/gradients/softmax/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
train/global_norm/stackPacktrain/global_norm/L2Losstrain/global_norm/L2Loss_1train/global_norm/L2Loss_2train/global_norm/L2Loss_3train/global_norm/L2Loss_4*
T0*

axis *
N*
_output_shapes
:
a
train/global_norm/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
train/global_norm/SumSumtrain/global_norm/stacktrain/global_norm/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
^
train/global_norm/Const_1Const*
_output_shapes
: *
valueB
 *   @*
dtype0
o
train/global_norm/mulMultrain/global_norm/Sumtrain/global_norm/Const_1*
_output_shapes
: *
T0
]
train/global_norm/global_normSqrttrain/global_norm/mul*
T0*
_output_shapes
: 
h
#train/clip_by_global_norm/truediv/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
!train/clip_by_global_norm/truedivRealDiv#train/clip_by_global_norm/truediv/xtrain/global_norm/global_norm*
T0*
_output_shapes
: 
d
train/clip_by_global_norm/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
j
%train/clip_by_global_norm/truediv_1/yConst*
valueB
 *  �@*
dtype0*
_output_shapes
: 
�
#train/clip_by_global_norm/truediv_1RealDivtrain/clip_by_global_norm/Const%train/clip_by_global_norm/truediv_1/y*
T0*
_output_shapes
: 
�
!train/clip_by_global_norm/MinimumMinimum!train/clip_by_global_norm/truediv#train/clip_by_global_norm/truediv_1*
T0*
_output_shapes
: 
d
train/clip_by_global_norm/mul/xConst*
valueB
 *  �@*
dtype0*
_output_shapes
: 
�
train/clip_by_global_norm/mulMultrain/clip_by_global_norm/mul/x!train/clip_by_global_norm/Minimum*
T0*
_output_shapes
: 
�
train/clip_by_global_norm/mul_1Mul0train/gradients/lm/embedding_lookup_grad/Reshapetrain/clip_by_global_norm/mul*
T0*C
_class9
75loc:@train/gradients/lm/embedding_lookup_grad/Reshape*(
_output_shapes
:����������
�
6train/clip_by_global_norm/train/clip_by_global_norm/_0Identitytrain/clip_by_global_norm/mul_1*
T0*C
_class9
75loc:@train/gradients/lm/embedding_lookup_grad/Reshape*(
_output_shapes
:����������
�
train/clip_by_global_norm/mul_2Mul`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3train/clip_by_global_norm/mul* 
_output_shapes
:
��*
T0*s
_classi
geloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3
�
6train/clip_by_global_norm/train/clip_by_global_norm/_1Identitytrain/clip_by_global_norm/mul_2* 
_output_shapes
:
��*
T0*s
_classi
geloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3
�
train/clip_by_global_norm/mul_3Mulatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3train/clip_by_global_norm/mul*
T0*t
_classj
hfloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes	
:�
�
6train/clip_by_global_norm/train/clip_by_global_norm/_2Identitytrain/clip_by_global_norm/mul_3*
T0*t
_classj
hfloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes	
:�
�
train/clip_by_global_norm/mul_4Mul,train/gradients/softmax/MatMul_grad/MatMul_1train/clip_by_global_norm/mul*
T0*?
_class5
31loc:@train/gradients/softmax/MatMul_grad/MatMul_1* 
_output_shapes
:
��/
�
6train/clip_by_global_norm/train/clip_by_global_norm/_3Identitytrain/clip_by_global_norm/mul_4*
T0*?
_class5
31loc:@train/gradients/softmax/MatMul_grad/MatMul_1* 
_output_shapes
:
��/
�
train/clip_by_global_norm/mul_5Mul0train/gradients/softmax/BiasAdd_grad/BiasAddGradtrain/clip_by_global_norm/mul*
T0*C
_class9
75loc:@train/gradients/softmax/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�/
�
6train/clip_by_global_norm/train/clip_by_global_norm/_4Identitytrain/clip_by_global_norm/mul_5*
_output_shapes	
:�/*
T0*C
_class9
75loc:@train/gradients/softmax/BiasAdd_grad/BiasAddGrad
�
train/beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *
_class
loc:@embedding*
valueB
 *fff?
�
train/beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@embedding
�
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@embedding
t
train/beta1_power/readIdentitytrain/beta1_power*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
train/beta2_power/initial_valueConst*
_class
loc:@embedding*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
train/beta2_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@embedding*
	container 
�
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
use_locking(*
T0*
_class
loc:@embedding*
validate_shape(*
_output_shapes
: 
t
train/beta2_power/readIdentitytrain/beta2_power*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
0embedding/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@embedding*
valueB"�  �   *
dtype0*
_output_shapes
:
�
&embedding/Adam/Initializer/zeros/ConstConst*
_class
loc:@embedding*
valueB
 *    *
dtype0*
_output_shapes
: 
�
 embedding/Adam/Initializer/zerosFill0embedding/Adam/Initializer/zeros/shape_as_tensor&embedding/Adam/Initializer/zeros/Const* 
_output_shapes
:
�/�*
T0*
_class
loc:@embedding*

index_type0
�
embedding/Adam
VariableV2*
shape:
�/�*
dtype0* 
_output_shapes
:
�/�*
shared_name *
_class
loc:@embedding*
	container 
�
embedding/Adam/AssignAssignembedding/Adam embedding/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
�/�
x
embedding/Adam/readIdentityembedding/Adam*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
2embedding/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
_class
loc:@embedding*
valueB"�  �   
�
(embedding/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@embedding*
valueB
 *    *
dtype0*
_output_shapes
: 
�
"embedding/Adam_1/Initializer/zerosFill2embedding/Adam_1/Initializer/zeros/shape_as_tensor(embedding/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@embedding*

index_type0* 
_output_shapes
:
�/�
�
embedding/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
�/�*
shared_name *
_class
loc:@embedding*
	container *
shape:
�/�
�
embedding/Adam_1/AssignAssignembedding/Adam_1"embedding/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
�/�
|
embedding/Adam_1/readIdentityembedding/Adam_1*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
Wrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
�
Mrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zerosFillWrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorMrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/Const*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*

index_type0* 
_output_shapes
:
��*
T0
�
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container *
shape:
��
�
<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/AssignAssign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamGrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
��
�
:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/readIdentity5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
��
�
Yrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
�
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Irnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zerosFillYrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*

index_type0* 
_output_shapes
:
��
�
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1
VariableV2*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��*
shared_name 
�
>rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/AssignAssign7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1Irnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/readIdentity7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1* 
_output_shapes
:
��*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
�
Ernn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zerosConst*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam
VariableV2*
shared_name *A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/AssignAssign3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamErnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:�
�
8rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/readIdentity3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:�*
T0
�
Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zerosConst*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1
VariableV2*
shared_name *A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape:�*
dtype0*
_output_shapes	
:�
�
<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/AssignAssign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(
�
:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/readIdentity5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:�
�
0softmax_w/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@softmax_w*
valueB"�   �  *
dtype0*
_output_shapes
:
�
&softmax_w/Adam/Initializer/zeros/ConstConst*
_class
loc:@softmax_w*
valueB
 *    *
dtype0*
_output_shapes
: 
�
 softmax_w/Adam/Initializer/zerosFill0softmax_w/Adam/Initializer/zeros/shape_as_tensor&softmax_w/Adam/Initializer/zeros/Const*
T0*
_class
loc:@softmax_w*

index_type0* 
_output_shapes
:
��/
�
softmax_w/Adam
VariableV2*
dtype0* 
_output_shapes
:
��/*
shared_name *
_class
loc:@softmax_w*
	container *
shape:
��/
�
softmax_w/Adam/AssignAssignsoftmax_w/Adam softmax_w/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@softmax_w*
validate_shape(* 
_output_shapes
:
��/
x
softmax_w/Adam/readIdentitysoftmax_w/Adam*
T0*
_class
loc:@softmax_w* 
_output_shapes
:
��/
�
2softmax_w/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@softmax_w*
valueB"�   �  *
dtype0*
_output_shapes
:
�
(softmax_w/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@softmax_w*
valueB
 *    *
dtype0*
_output_shapes
: 
�
"softmax_w/Adam_1/Initializer/zerosFill2softmax_w/Adam_1/Initializer/zeros/shape_as_tensor(softmax_w/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@softmax_w*

index_type0* 
_output_shapes
:
��/
�
softmax_w/Adam_1
VariableV2*
shape:
��/*
dtype0* 
_output_shapes
:
��/*
shared_name *
_class
loc:@softmax_w*
	container 
�
softmax_w/Adam_1/AssignAssignsoftmax_w/Adam_1"softmax_w/Adam_1/Initializer/zeros*
T0*
_class
loc:@softmax_w*
validate_shape(* 
_output_shapes
:
��/*
use_locking(
|
softmax_w/Adam_1/readIdentitysoftmax_w/Adam_1*
T0*
_class
loc:@softmax_w* 
_output_shapes
:
��/
�
0softmax_b/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@softmax_b*
valueB:�/*
dtype0*
_output_shapes
:
�
&softmax_b/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
_class
loc:@softmax_b*
valueB
 *    *
dtype0
�
 softmax_b/Adam/Initializer/zerosFill0softmax_b/Adam/Initializer/zeros/shape_as_tensor&softmax_b/Adam/Initializer/zeros/Const*
_output_shapes	
:�/*
T0*
_class
loc:@softmax_b*

index_type0
�
softmax_b/Adam
VariableV2*
shape:�/*
dtype0*
_output_shapes	
:�/*
shared_name *
_class
loc:@softmax_b*
	container 
�
softmax_b/Adam/AssignAssignsoftmax_b/Adam softmax_b/Adam/Initializer/zeros*
_output_shapes	
:�/*
use_locking(*
T0*
_class
loc:@softmax_b*
validate_shape(
s
softmax_b/Adam/readIdentitysoftmax_b/Adam*
T0*
_class
loc:@softmax_b*
_output_shapes	
:�/
�
2softmax_b/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@softmax_b*
valueB:�/*
dtype0*
_output_shapes
:
�
(softmax_b/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@softmax_b*
valueB
 *    *
dtype0*
_output_shapes
: 
�
"softmax_b/Adam_1/Initializer/zerosFill2softmax_b/Adam_1/Initializer/zeros/shape_as_tensor(softmax_b/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@softmax_b*

index_type0*
_output_shapes	
:�/
�
softmax_b/Adam_1
VariableV2*
shared_name *
_class
loc:@softmax_b*
	container *
shape:�/*
dtype0*
_output_shapes	
:�/
�
softmax_b/Adam_1/AssignAssignsoftmax_b/Adam_1"softmax_b/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:�/*
use_locking(*
T0*
_class
loc:@softmax_b
w
softmax_b/Adam_1/readIdentitysoftmax_b/Adam_1*
_class
loc:@softmax_b*
_output_shapes	
:�/*
T0
U
train/Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
U
train/Adam/beta2Const*
_output_shapes
: *
valueB
 *w�?*
dtype0
W
train/Adam/epsilonConst*
_output_shapes
: *
valueB
 *w�+2*
dtype0
�
"train/Adam/update_embedding/UniqueUnique2train/gradients/lm/embedding_lookup_grad/Reshape_1*2
_output_shapes 
:���������:���������*
out_idx0*
T0*
_class
loc:@embedding
�
!train/Adam/update_embedding/ShapeShape"train/Adam/update_embedding/Unique*
T0*
_class
loc:@embedding*
out_type0*
_output_shapes
:
�
/train/Adam/update_embedding/strided_slice/stackConst*
_class
loc:@embedding*
valueB: *
dtype0*
_output_shapes
:
�
1train/Adam/update_embedding/strided_slice/stack_1Const*
_class
loc:@embedding*
valueB:*
dtype0*
_output_shapes
:
�
1train/Adam/update_embedding/strided_slice/stack_2Const*
_class
loc:@embedding*
valueB:*
dtype0*
_output_shapes
:
�
)train/Adam/update_embedding/strided_sliceStridedSlice!train/Adam/update_embedding/Shape/train/Adam/update_embedding/strided_slice/stack1train/Adam/update_embedding/strided_slice/stack_11train/Adam/update_embedding/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
_class
loc:@embedding
�
.train/Adam/update_embedding/UnsortedSegmentSumUnsortedSegmentSum6train/clip_by_global_norm/train/clip_by_global_norm/_0$train/Adam/update_embedding/Unique:1)train/Adam/update_embedding/strided_slice*
_class
loc:@embedding*(
_output_shapes
:����������*
Tnumsegments0*
Tindices0*
T0
�
!train/Adam/update_embedding/sub/xConst*
_class
loc:@embedding*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
train/Adam/update_embedding/subSub!train/Adam/update_embedding/sub/xtrain/beta2_power/read*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
 train/Adam/update_embedding/SqrtSqrttrain/Adam/update_embedding/sub*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
train/Adam/update_embedding/mulMullearning_rate/Variable/read train/Adam/update_embedding/Sqrt*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
#train/Adam/update_embedding/sub_1/xConst*
_class
loc:@embedding*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
!train/Adam/update_embedding/sub_1Sub#train/Adam/update_embedding/sub_1/xtrain/beta1_power/read*
_output_shapes
: *
T0*
_class
loc:@embedding
�
#train/Adam/update_embedding/truedivRealDivtrain/Adam/update_embedding/mul!train/Adam/update_embedding/sub_1*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
#train/Adam/update_embedding/sub_2/xConst*
_class
loc:@embedding*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
!train/Adam/update_embedding/sub_2Sub#train/Adam/update_embedding/sub_2/xtrain/Adam/beta1*
_output_shapes
: *
T0*
_class
loc:@embedding
�
!train/Adam/update_embedding/mul_1Mul.train/Adam/update_embedding/UnsortedSegmentSum!train/Adam/update_embedding/sub_2*(
_output_shapes
:����������*
T0*
_class
loc:@embedding
�
!train/Adam/update_embedding/mul_2Mulembedding/Adam/readtrain/Adam/beta1*
_class
loc:@embedding* 
_output_shapes
:
�/�*
T0
�
"train/Adam/update_embedding/AssignAssignembedding/Adam!train/Adam/update_embedding/mul_2*
use_locking( *
T0*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
�/�
�
&train/Adam/update_embedding/ScatterAdd
ScatterAddembedding/Adam"train/Adam/update_embedding/Unique!train/Adam/update_embedding/mul_1#^train/Adam/update_embedding/Assign*
use_locking( *
Tindices0*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
!train/Adam/update_embedding/mul_3Mul.train/Adam/update_embedding/UnsortedSegmentSum.train/Adam/update_embedding/UnsortedSegmentSum*
T0*
_class
loc:@embedding*(
_output_shapes
:����������
�
#train/Adam/update_embedding/sub_3/xConst*
_class
loc:@embedding*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
!train/Adam/update_embedding/sub_3Sub#train/Adam/update_embedding/sub_3/xtrain/Adam/beta2*
_output_shapes
: *
T0*
_class
loc:@embedding
�
!train/Adam/update_embedding/mul_4Mul!train/Adam/update_embedding/mul_3!train/Adam/update_embedding/sub_3*
T0*
_class
loc:@embedding*(
_output_shapes
:����������
�
!train/Adam/update_embedding/mul_5Mulembedding/Adam_1/readtrain/Adam/beta2*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
$train/Adam/update_embedding/Assign_1Assignembedding/Adam_1!train/Adam/update_embedding/mul_5*
T0*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
�/�*
use_locking( 
�
(train/Adam/update_embedding/ScatterAdd_1
ScatterAddembedding/Adam_1"train/Adam/update_embedding/Unique!train/Adam/update_embedding/mul_4%^train/Adam/update_embedding/Assign_1*
use_locking( *
Tindices0*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
"train/Adam/update_embedding/Sqrt_1Sqrt(train/Adam/update_embedding/ScatterAdd_1*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
!train/Adam/update_embedding/mul_6Mul#train/Adam/update_embedding/truediv&train/Adam/update_embedding/ScatterAdd*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
train/Adam/update_embedding/addAdd"train/Adam/update_embedding/Sqrt_1train/Adam/epsilon*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
%train/Adam/update_embedding/truediv_1RealDiv!train/Adam/update_embedding/mul_6train/Adam/update_embedding/add*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
%train/Adam/update_embedding/AssignSub	AssignSub	embedding%train/Adam/update_embedding/truediv_1*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�*
use_locking( 
�
&train/Adam/update_embedding/group_depsNoOp&^train/Adam/update_embedding/AssignSub'^train/Adam/update_embedding/ScatterAdd)^train/Adam/update_embedding/ScatterAdd_1*
_class
loc:@embedding
�
Ltrain/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam	ApplyAdam0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1train/beta1_power/readtrain/beta2_power/readlearning_rate/Variable/readtrain/Adam/beta1train/Adam/beta2train/Adam/epsilon6train/clip_by_global_norm/train/clip_by_global_norm/_1*
use_locking( *
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
��
�
Jtrain/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam	ApplyAdam.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1train/beta1_power/readtrain/beta2_power/readlearning_rate/Variable/readtrain/Adam/beta1train/Adam/beta2train/Adam/epsilon6train/clip_by_global_norm/train/clip_by_global_norm/_2*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
use_nesterov( *
_output_shapes	
:�*
use_locking( *
T0
�
%train/Adam/update_softmax_w/ApplyAdam	ApplyAdam	softmax_wsoftmax_w/Adamsoftmax_w/Adam_1train/beta1_power/readtrain/beta2_power/readlearning_rate/Variable/readtrain/Adam/beta1train/Adam/beta2train/Adam/epsilon6train/clip_by_global_norm/train/clip_by_global_norm/_3*
T0*
_class
loc:@softmax_w*
use_nesterov( * 
_output_shapes
:
��/*
use_locking( 
�
%train/Adam/update_softmax_b/ApplyAdam	ApplyAdam	softmax_bsoftmax_b/Adamsoftmax_b/Adam_1train/beta1_power/readtrain/beta2_power/readlearning_rate/Variable/readtrain/Adam/beta1train/Adam/beta2train/Adam/epsilon6train/clip_by_global_norm/train/clip_by_global_norm/_4*
T0*
_class
loc:@softmax_b*
use_nesterov( *
_output_shapes	
:�/*
use_locking( 
�
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta1'^train/Adam/update_embedding/group_depsK^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdamM^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam&^train/Adam/update_softmax_b/ApplyAdam&^train/Adam/update_softmax_w/ApplyAdam*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
use_locking( *
T0*
_class
loc:@embedding*
validate_shape(*
_output_shapes
: 
�
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2'^train/Adam/update_embedding/group_depsK^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdamM^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam&^train/Adam/update_softmax_b/ApplyAdam&^train/Adam/update_softmax_w/ApplyAdam*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
use_locking( *
T0*
_class
loc:@embedding*
validate_shape(*
_output_shapes
: 
�

train/AdamNoOp^train/Adam/Assign^train/Adam/Assign_1'^train/Adam/update_embedding/group_depsK^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdamM^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam&^train/Adam/update_softmax_b/ApplyAdam&^train/Adam/update_softmax_w/ApplyAdam
�
initNoOp^embedding/Adam/Assign^embedding/Adam_1/Assign^embedding/Assign^learning_rate/Variable/Assign;^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Assign=^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Assign6^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign=^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Assign?^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Assign8^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assign^softmax_b/Adam/Assign^softmax_b/Adam_1/Assign^softmax_b/Assign^softmax_w/Adam/Assign^softmax_w/Adam_1/Assign^softmax_w/Assign^train/beta1_power/Assign^train/beta2_power/Assign
\
Merge/MergeSummaryMergeSummarylearning_rate_1loss_1*
N*
_output_shapes
: "�+�<�     )���	�BR���AJ��
�5�4
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignSub
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

ControlTrigger
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
2
L2Loss
t"T
output"T"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
$

LogicalAnd
x

y

z
�
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
�

ScatterAdd
ref"T�
indices"Tindices
updates"T

output_ref"T�" 
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
-
Sqrt
x"T
y"T"
Ttype:

2
A

StackPopV2

handle
elem"	elem_type"
	elem_typetype�
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( �
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring �
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:�
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestring�
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype�
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype�
9
TensorArraySizeV3

handle
flow_in
size�
�
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring �
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype�
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
�
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.8.02v1.8.0-0-g93bc2e2072��	
t
input/PlaceholderPlaceholder*
dtype0*'
_output_shapes
:@���������*
shape:@���������
v
input/Placeholder_1Placeholder*
shape:@���������*
dtype0*'
_output_shapes
:@���������
i
$learning_rate/Variable/initial_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
z
learning_rate/Variable
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
learning_rate/Variable/AssignAssignlearning_rate/Variable$learning_rate/Variable/initial_value*
use_locking(*
T0*)
_class
loc:@learning_rate/Variable*
validate_shape(*
_output_shapes
: 
�
learning_rate/Variable/readIdentitylearning_rate/Variable*
T0*)
_class
loc:@learning_rate/Variable*
_output_shapes
: 
d
learning_rate_1/tagsConst* 
valueB Blearning_rate_1*
dtype0*
_output_shapes
: 
t
learning_rate_1ScalarSummarylearning_rate_1/tagslearning_rate/Variable/read*
_output_shapes
: *
T0
�
;rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Arnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
<rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concatConcatV2;rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_1Arnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
Arnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
;rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zerosFill<rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concatArnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	@�
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_2Const*
_output_shapes
:*
valueB:@*
dtype0
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_3Const*
valueB:�*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_4Const*
valueB:@*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_5Const*
valueB:�*
dtype0*
_output_shapes
:
�
Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
>rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1ConcatV2=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_4=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_5Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1Fill>rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	@�
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_6Const*
valueB:@*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_7Const*
valueB:�*
dtype0*
_output_shapes
:
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_1Const*
valueB:�*
dtype0*
_output_shapes
:
�
Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
>rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concatConcatV2=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_1Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
Crnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zerosFill>rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concatCrnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/Const*
_output_shapes
:	@�*
T0*

index_type0
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_3Const*
valueB:�*
dtype0*
_output_shapes
:
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_4Const*
valueB:@*
dtype0*
_output_shapes
:
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_5Const*
valueB:�*
dtype0*
_output_shapes
:
�
Ernn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
@rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1ConcatV2?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_4?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_5Ernn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
Ernn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1Fill@rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1Ernn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	@�
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_6Const*
valueB:@*
dtype0*
_output_shapes
:
�
?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_7Const*
valueB:�*
dtype0*
_output_shapes
:
�
*embedding/Initializer/random_uniform/shapeConst*
_class
loc:@embedding*
valueB"�  �   *
dtype0*
_output_shapes
:
�
(embedding/Initializer/random_uniform/minConst*
_class
loc:@embedding*
valueB
 *Y��*
dtype0*
_output_shapes
: 
�
(embedding/Initializer/random_uniform/maxConst*
_class
loc:@embedding*
valueB
 *Y�<*
dtype0*
_output_shapes
: 
�
2embedding/Initializer/random_uniform/RandomUniformRandomUniform*embedding/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@embedding*
seed2 *
dtype0* 
_output_shapes
:
�/�
�
(embedding/Initializer/random_uniform/subSub(embedding/Initializer/random_uniform/max(embedding/Initializer/random_uniform/min*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
(embedding/Initializer/random_uniform/mulMul2embedding/Initializer/random_uniform/RandomUniform(embedding/Initializer/random_uniform/sub*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
$embedding/Initializer/random_uniformAdd(embedding/Initializer/random_uniform/mul(embedding/Initializer/random_uniform/min*
_class
loc:@embedding* 
_output_shapes
:
�/�*
T0
�
	embedding
VariableV2*
shape:
�/�*
dtype0* 
_output_shapes
:
�/�*
shared_name *
_class
loc:@embedding*
	container 
�
embedding/AssignAssign	embedding$embedding/Initializer/random_uniform*
T0*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
�/�*
use_locking(
n
embedding/readIdentity	embedding*
_class
loc:@embedding* 
_output_shapes
:
�/�*
T0
x
lm/embedding_lookup/axisConst*
_class
loc:@embedding*
value	B : *
dtype0*
_output_shapes
: 
�
lm/embedding_lookupGatherV2embedding/readinput/Placeholderlm/embedding_lookup/axis*
Tindices0*
Tparams0*
_class
loc:@embedding*,
_output_shapes
:@����������*
Taxis0
M
lm/rnn/RankConst*
_output_shapes
: *
value	B :*
dtype0
T
lm/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
T
lm/rnn/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
r
lm/rnn/rangeRangelm/rnn/range/startlm/rnn/Ranklm/rnn/range/delta*
_output_shapes
:*

Tidx0
g
lm/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
T
lm/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
lm/rnn/concatConcatV2lm/rnn/concat/values_0lm/rnn/rangelm/rnn/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
lm/rnn/transpose	Transposelm/embedding_lookuplm/rnn/concat*,
_output_shapes
:���������@�*
Tperm0*
T0
\
lm/rnn/ShapeShapelm/rnn/transpose*
T0*
out_type0*
_output_shapes
:
d
lm/rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
lm/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
lm/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
lm/rnn/strided_sliceStridedSlicelm/rnn/Shapelm/rnn/strided_slice/stacklm/rnn/strided_slice/stack_1lm/rnn/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
V
lm/rnn/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
Y
lm/rnn/Const_1Const*
valueB:�*
dtype0*
_output_shapes
:
V
lm/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
lm/rnn/concat_1ConcatV2lm/rnn/Constlm/rnn/Const_1lm/rnn/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
W
lm/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
u
lm/rnn/zerosFilllm/rnn/concat_1lm/rnn/zeros/Const*

index_type0*
_output_shapes
:	@�*
T0
M
lm/rnn/timeConst*
_output_shapes
: *
value	B : *
dtype0
�
lm/rnn/TensorArrayTensorArrayV3lm/rnn/strided_slice*
dtype0*
_output_shapes

:: *
element_shape:	@�*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*2
tensor_array_namelm/rnn/dynamic_rnn/output_0
�
lm/rnn/TensorArray_1TensorArrayV3lm/rnn/strided_slice*1
tensor_array_namelm/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	@�*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
o
lm/rnn/TensorArrayUnstack/ShapeShapelm/rnn/transpose*
_output_shapes
:*
T0*
out_type0
w
-lm/rnn/TensorArrayUnstack/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
y
/lm/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/lm/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
'lm/rnn/TensorArrayUnstack/strided_sliceStridedSlicelm/rnn/TensorArrayUnstack/Shape-lm/rnn/TensorArrayUnstack/strided_slice/stack/lm/rnn/TensorArrayUnstack/strided_slice/stack_1/lm/rnn/TensorArrayUnstack/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask 
g
%lm/rnn/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
g
%lm/rnn/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
lm/rnn/TensorArrayUnstack/rangeRange%lm/rnn/TensorArrayUnstack/range/start'lm/rnn/TensorArrayUnstack/strided_slice%lm/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:���������*

Tidx0
�
Alm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3lm/rnn/TensorArray_1lm/rnn/TensorArrayUnstack/rangelm/rnn/transposelm/rnn/TensorArray_1:1*
T0*#
_class
loc:@lm/rnn/transpose*
_output_shapes
: 
R
lm/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
b
lm/rnn/MaximumMaximumlm/rnn/Maximum/xlm/rnn/strided_slice*
T0*
_output_shapes
: 
`
lm/rnn/MinimumMinimumlm/rnn/strided_slicelm/rnn/Maximum*
T0*
_output_shapes
: 
`
lm/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
�
lm/rnn/while/EnterEnterlm/rnn/while/iteration_counter*
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context*
T0*
is_constant( 
�
lm/rnn/while/Enter_1Enterlm/rnn/time*
is_constant( *
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context*
T0
�
lm/rnn/while/Enter_2Enterlm/rnn/TensorArray:1*
_output_shapes
: **

frame_namelm/rnn/while/while_context*
T0*
is_constant( *
parallel_iterations 
�
lm/rnn/while/Enter_3Enter;rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros*
parallel_iterations *
_output_shapes
:	@�**

frame_namelm/rnn/while/while_context*
T0*
is_constant( 
�
lm/rnn/while/Enter_4Enter=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1*
parallel_iterations *
_output_shapes
:	@�**

frame_namelm/rnn/while/while_context*
T0*
is_constant( 
�
lm/rnn/while/Enter_5Enter=rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros*
parallel_iterations *
_output_shapes
:	@�**

frame_namelm/rnn/while/while_context*
T0*
is_constant( 
�
lm/rnn/while/Enter_6Enter?rnn_lstm/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�**

frame_namelm/rnn/while/while_context
w
lm/rnn/while/MergeMergelm/rnn/while/Enterlm/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
}
lm/rnn/while/Merge_1Mergelm/rnn/while/Enter_1lm/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
}
lm/rnn/while/Merge_2Mergelm/rnn/while/Enter_2lm/rnn/while/NextIteration_2*
N*
_output_shapes
: : *
T0
�
lm/rnn/while/Merge_3Mergelm/rnn/while/Enter_3lm/rnn/while/NextIteration_3*!
_output_shapes
:	@�: *
T0*
N
�
lm/rnn/while/Merge_4Mergelm/rnn/while/Enter_4lm/rnn/while/NextIteration_4*
T0*
N*!
_output_shapes
:	@�: 
�
lm/rnn/while/Merge_5Mergelm/rnn/while/Enter_5lm/rnn/while/NextIteration_5*
T0*
N*!
_output_shapes
:	@�: 
�
lm/rnn/while/Merge_6Mergelm/rnn/while/Enter_6lm/rnn/while/NextIteration_6*!
_output_shapes
:	@�: *
T0*
N
g
lm/rnn/while/LessLesslm/rnn/while/Mergelm/rnn/while/Less/Enter*
_output_shapes
: *
T0
�
lm/rnn/while/Less/EnterEnterlm/rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context
m
lm/rnn/while/Less_1Lesslm/rnn/while/Merge_1lm/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
�
lm/rnn/while/Less_1/EnterEnterlm/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context
e
lm/rnn/while/LogicalAnd
LogicalAndlm/rnn/while/Lesslm/rnn/while/Less_1*
_output_shapes
: 
R
lm/rnn/while/LoopCondLoopCondlm/rnn/while/LogicalAnd*
_output_shapes
: 
�
lm/rnn/while/SwitchSwitchlm/rnn/while/Mergelm/rnn/while/LoopCond*
T0*%
_class
loc:@lm/rnn/while/Merge*
_output_shapes
: : 
�
lm/rnn/while/Switch_1Switchlm/rnn/while/Merge_1lm/rnn/while/LoopCond*'
_class
loc:@lm/rnn/while/Merge_1*
_output_shapes
: : *
T0
�
lm/rnn/while/Switch_2Switchlm/rnn/while/Merge_2lm/rnn/while/LoopCond*
T0*'
_class
loc:@lm/rnn/while/Merge_2*
_output_shapes
: : 
�
lm/rnn/while/Switch_3Switchlm/rnn/while/Merge_3lm/rnn/while/LoopCond*
T0*'
_class
loc:@lm/rnn/while/Merge_3**
_output_shapes
:	@�:	@�
�
lm/rnn/while/Switch_4Switchlm/rnn/while/Merge_4lm/rnn/while/LoopCond*
T0*'
_class
loc:@lm/rnn/while/Merge_4**
_output_shapes
:	@�:	@�
�
lm/rnn/while/Switch_5Switchlm/rnn/while/Merge_5lm/rnn/while/LoopCond*
T0*'
_class
loc:@lm/rnn/while/Merge_5**
_output_shapes
:	@�:	@�
�
lm/rnn/while/Switch_6Switchlm/rnn/while/Merge_6lm/rnn/while/LoopCond*
T0*'
_class
loc:@lm/rnn/while/Merge_6**
_output_shapes
:	@�:	@�
Y
lm/rnn/while/IdentityIdentitylm/rnn/while/Switch:1*
_output_shapes
: *
T0
]
lm/rnn/while/Identity_1Identitylm/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
]
lm/rnn/while/Identity_2Identitylm/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
f
lm/rnn/while/Identity_3Identitylm/rnn/while/Switch_3:1*
_output_shapes
:	@�*
T0
f
lm/rnn/while/Identity_4Identitylm/rnn/while/Switch_4:1*
_output_shapes
:	@�*
T0
f
lm/rnn/while/Identity_5Identitylm/rnn/while/Switch_5:1*
T0*
_output_shapes
:	@�
f
lm/rnn/while/Identity_6Identitylm/rnn/while/Switch_6:1*
T0*
_output_shapes
:	@�
l
lm/rnn/while/add/yConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
c
lm/rnn/while/addAddlm/rnn/while/Identitylm/rnn/while/add/y*
T0*
_output_shapes
: 
�
lm/rnn/while/TensorArrayReadV3TensorArrayReadV3$lm/rnn/while/TensorArrayReadV3/Enterlm/rnn/while/Identity_1&lm/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	@�
�
$lm/rnn/while/TensorArrayReadV3/EnterEnterlm/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
&lm/rnn/while/TensorArrayReadV3/Enter_1EnterAlm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context*
T0
�
Qrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
�
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB
 *���*
dtype0*
_output_shapes
: 
�
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB
 *��=*
dtype0*
_output_shapes
: 
�
Yrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformQrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
��*

seed *
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
seed2 
�
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/subSubOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
�
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulYrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
��
�
Krnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniformAddOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
��
�
0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container *
shape:
��
�
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignAssign0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernelKrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
��
�
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/readIdentity0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
T0* 
_output_shapes
:
��
�
@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zerosConst*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape:�
�
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignAssign.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:�
�
3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/readIdentity.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
T0*
_output_shapes	
:�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/ConstConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
Blm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axisConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concatConcatV2lm/rnn/while/TensorArrayReadV3lm/rnn/while/Identity_4Blm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis*
N*
_output_shapes
:	@�*

Tidx0*
T0
�
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMulMatMul=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concatClm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter*
transpose_b( *
T0*
_output_shapes
:	@�*
transpose_a( 
�
Clm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/EnterEnter5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
is_constant(*
parallel_iterations * 
_output_shapes
:
��**

frame_namelm/rnn/while/while_context*
T0
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAddBiasAdd=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMulDlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	@�
�
Dlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/EnterEnter3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
is_constant(*
parallel_iterations *
_output_shapes	
:�**

frame_namelm/rnn/while/while_context*
T0
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1Const^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/splitSplit<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd*@
_output_shapes.
,:	@�:	@�:	@�:	@�*
	num_split*
T0
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2Const^lm/rnn/while/Identity*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
:lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/AddAdd>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:2>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2*
T0*
_output_shapes
:	@�
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/SigmoidSigmoid:lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add*
T0*
_output_shapes
:	@�
�
:lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MulMullm/rnn/while/Identity_3>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
_output_shapes
:	@�*
T0
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1Sigmoid<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split*
_output_shapes
:	@�*
T0
�
;lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/TanhTanh>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:1*
T0*
_output_shapes
:	@�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1Mul@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1;lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
T0*
_output_shapes
:	@�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1Add:lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1*
_output_shapes
:	@�*
T0
�
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1Tanh<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*
T0*
_output_shapes
:	@�
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2Sigmoid>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:3*
T0*
_output_shapes
:	@�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2Mul=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
T0*
_output_shapes
:	@�
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3Const^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
Dlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axisConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1ConcatV2<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2lm/rnn/while/Identity_6Dlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axis*
N*
_output_shapes
:	@�*

Tidx0*
T0
�
?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1MatMul?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1Clm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter*
_output_shapes
:	@�*
transpose_a( *
transpose_b( *
T0
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1BiasAdd?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1Dlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	@�
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_4Const^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1Split>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1*
T0*@
_output_shapes.
,:	@�:	@�:	@�:	@�*
	num_split
�
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_5Const^lm/rnn/while/Identity*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2Add@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:2>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_5*
T0*
_output_shapes
:	@�
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3Sigmoid<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2*
T0*
_output_shapes
:	@�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3Mullm/rnn/while/Identity_5@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3*
_output_shapes
:	@�*
T0
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4Sigmoid>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1*
_output_shapes
:	@�*
T0
�
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2Tanh@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:1*
_output_shapes
:	@�*
T0
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4Mul@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2*
T0*
_output_shapes
:	@�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3Add<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4*
T0*
_output_shapes
:	@�
�
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3Tanh<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3*
_output_shapes
:	@�*
T0
�
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5Sigmoid@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:3*
T0*
_output_shapes
:	@�
�
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5Mul=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5*
_output_shapes
:	@�*
T0
�
0lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV36lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterlm/rnn/while/Identity_1<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5lm/rnn/while/Identity_2*
T0*O
_classE
CAloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
_output_shapes
: 
�
6lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterlm/rnn/TensorArray*
T0*O
_classE
CAloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
parallel_iterations *
is_constant(*
_output_shapes
:**

frame_namelm/rnn/while/while_context
n
lm/rnn/while/add_1/yConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
i
lm/rnn/while/add_1Addlm/rnn/while/Identity_1lm/rnn/while/add_1/y*
T0*
_output_shapes
: 
^
lm/rnn/while/NextIterationNextIterationlm/rnn/while/add*
T0*
_output_shapes
: 
b
lm/rnn/while/NextIteration_1NextIterationlm/rnn/while/add_1*
T0*
_output_shapes
: 
�
lm/rnn/while/NextIteration_2NextIteration0lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
�
lm/rnn/while/NextIteration_3NextIteration<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*
T0*
_output_shapes
:	@�
�
lm/rnn/while/NextIteration_4NextIteration<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
T0*
_output_shapes
:	@�
�
lm/rnn/while/NextIteration_5NextIteration<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3*
T0*
_output_shapes
:	@�
�
lm/rnn/while/NextIteration_6NextIteration<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
_output_shapes
:	@�*
T0
O
lm/rnn/while/ExitExitlm/rnn/while/Switch*
T0*
_output_shapes
: 
S
lm/rnn/while/Exit_1Exitlm/rnn/while/Switch_1*
T0*
_output_shapes
: 
S
lm/rnn/while/Exit_2Exitlm/rnn/while/Switch_2*
_output_shapes
: *
T0
\
lm/rnn/while/Exit_3Exitlm/rnn/while/Switch_3*
T0*
_output_shapes
:	@�
\
lm/rnn/while/Exit_4Exitlm/rnn/while/Switch_4*
T0*
_output_shapes
:	@�
\
lm/rnn/while/Exit_5Exitlm/rnn/while/Switch_5*
T0*
_output_shapes
:	@�
\
lm/rnn/while/Exit_6Exitlm/rnn/while/Switch_6*
_output_shapes
:	@�*
T0
�
)lm/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3lm/rnn/TensorArraylm/rnn/while/Exit_2*%
_class
loc:@lm/rnn/TensorArray*
_output_shapes
: 
�
#lm/rnn/TensorArrayStack/range/startConst*%
_class
loc:@lm/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
�
#lm/rnn/TensorArrayStack/range/deltaConst*%
_class
loc:@lm/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
�
lm/rnn/TensorArrayStack/rangeRange#lm/rnn/TensorArrayStack/range/start)lm/rnn/TensorArrayStack/TensorArraySizeV3#lm/rnn/TensorArrayStack/range/delta*%
_class
loc:@lm/rnn/TensorArray*#
_output_shapes
:���������*

Tidx0
�
+lm/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3lm/rnn/TensorArraylm/rnn/TensorArrayStack/rangelm/rnn/while/Exit_2*%
_class
loc:@lm/rnn/TensorArray*
dtype0*,
_output_shapes
:���������@�*
element_shape:	@�
Y
lm/rnn/Const_2Const*
valueB:�*
dtype0*
_output_shapes
:
O
lm/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
V
lm/rnn/range_1/startConst*
_output_shapes
: *
value	B :*
dtype0
V
lm/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
z
lm/rnn/range_1Rangelm/rnn/range_1/startlm/rnn/Rank_1lm/rnn/range_1/delta*
_output_shapes
:*

Tidx0
i
lm/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
V
lm/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
lm/rnn/concat_2ConcatV2lm/rnn/concat_2/values_0lm/rnn/range_1lm/rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
lm/rnn/transpose_1	Transpose+lm/rnn/TensorArrayStack/TensorArrayGatherV3lm/rnn/concat_2*,
_output_shapes
:@����������*
Tperm0*
T0
a
lm/Reshape/shapeConst*
valueB"�����   *
dtype0*
_output_shapes
:
|

lm/ReshapeReshapelm/rnn/transpose_1lm/Reshape/shape*(
_output_shapes
:����������*
T0*
Tshape0
�
*softmax_w/Initializer/random_uniform/shapeConst*
_class
loc:@softmax_w*
valueB"�   �  *
dtype0*
_output_shapes
:
�
(softmax_w/Initializer/random_uniform/minConst*
_output_shapes
: *
_class
loc:@softmax_w*
valueB
 *Y��*
dtype0
�
(softmax_w/Initializer/random_uniform/maxConst*
_class
loc:@softmax_w*
valueB
 *Y�<*
dtype0*
_output_shapes
: 
�
2softmax_w/Initializer/random_uniform/RandomUniformRandomUniform*softmax_w/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
��/*

seed *
T0*
_class
loc:@softmax_w*
seed2 
�
(softmax_w/Initializer/random_uniform/subSub(softmax_w/Initializer/random_uniform/max(softmax_w/Initializer/random_uniform/min*
T0*
_class
loc:@softmax_w*
_output_shapes
: 
�
(softmax_w/Initializer/random_uniform/mulMul2softmax_w/Initializer/random_uniform/RandomUniform(softmax_w/Initializer/random_uniform/sub*
T0*
_class
loc:@softmax_w* 
_output_shapes
:
��/
�
$softmax_w/Initializer/random_uniformAdd(softmax_w/Initializer/random_uniform/mul(softmax_w/Initializer/random_uniform/min*
T0*
_class
loc:@softmax_w* 
_output_shapes
:
��/
�
	softmax_w
VariableV2*
	container *
shape:
��/*
dtype0* 
_output_shapes
:
��/*
shared_name *
_class
loc:@softmax_w
�
softmax_w/AssignAssign	softmax_w$softmax_w/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
��/*
use_locking(*
T0*
_class
loc:@softmax_w
n
softmax_w/readIdentity	softmax_w*
T0*
_class
loc:@softmax_w* 
_output_shapes
:
��/
�
*softmax_b/Initializer/random_uniform/shapeConst*
_class
loc:@softmax_b*
valueB:�/*
dtype0*
_output_shapes
:
�
(softmax_b/Initializer/random_uniform/minConst*
_class
loc:@softmax_b*
valueB
 *����*
dtype0*
_output_shapes
: 
�
(softmax_b/Initializer/random_uniform/maxConst*
_output_shapes
: *
_class
loc:@softmax_b*
valueB
 *���<*
dtype0
�
2softmax_b/Initializer/random_uniform/RandomUniformRandomUniform*softmax_b/Initializer/random_uniform/shape*
dtype0*
_output_shapes	
:�/*

seed *
T0*
_class
loc:@softmax_b*
seed2 
�
(softmax_b/Initializer/random_uniform/subSub(softmax_b/Initializer/random_uniform/max(softmax_b/Initializer/random_uniform/min*
_class
loc:@softmax_b*
_output_shapes
: *
T0
�
(softmax_b/Initializer/random_uniform/mulMul2softmax_b/Initializer/random_uniform/RandomUniform(softmax_b/Initializer/random_uniform/sub*
T0*
_class
loc:@softmax_b*
_output_shapes	
:�/
�
$softmax_b/Initializer/random_uniformAdd(softmax_b/Initializer/random_uniform/mul(softmax_b/Initializer/random_uniform/min*
_output_shapes	
:�/*
T0*
_class
loc:@softmax_b
�
	softmax_b
VariableV2*
shape:�/*
dtype0*
_output_shapes	
:�/*
shared_name *
_class
loc:@softmax_b*
	container 
�
softmax_b/AssignAssign	softmax_b$softmax_b/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@softmax_b*
validate_shape(*
_output_shapes	
:�/
i
softmax_b/readIdentity	softmax_b*
T0*
_class
loc:@softmax_b*
_output_shapes	
:�/
�
softmax/MatMulMatMul
lm/Reshapesoftmax_w/read*
transpose_b( *
T0*(
_output_shapes
:����������/*
transpose_a( 
�
softmax/BiasAddBiasAddsoftmax/MatMulsoftmax_b/read*(
_output_shapes
:����������/*
T0*
data_formatNHWC
`
Reshape/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
r
ReshapeReshapeinput/Placeholder_1Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
U
one_hot/on_valueConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
V
one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
P
one_hot/depthConst*
value
B :�/*
dtype0*
_output_shapes
: 
�
one_hotOneHotReshapeone_hot/depthone_hot/on_valueone_hot/off_value*
axis���������*
TI0*(
_output_shapes
:����������/*
T0
�
>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradientone_hot*(
_output_shapes
:����������/*
T0
p
.loss/softmax_cross_entropy_with_logits_sg/RankConst*
value	B :*
dtype0*
_output_shapes
: 
~
/loss/softmax_cross_entropy_with_logits_sg/ShapeShapesoftmax/BiasAdd*
T0*
out_type0*
_output_shapes
:
r
0loss/softmax_cross_entropy_with_logits_sg/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
�
1loss/softmax_cross_entropy_with_logits_sg/Shape_1Shapesoftmax/BiasAdd*
T0*
out_type0*
_output_shapes
:
q
/loss/softmax_cross_entropy_with_logits_sg/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
-loss/softmax_cross_entropy_with_logits_sg/SubSub0loss/softmax_cross_entropy_with_logits_sg/Rank_1/loss/softmax_cross_entropy_with_logits_sg/Sub/y*
_output_shapes
: *
T0
�
5loss/softmax_cross_entropy_with_logits_sg/Slice/beginPack-loss/softmax_cross_entropy_with_logits_sg/Sub*
T0*

axis *
N*
_output_shapes
:
~
4loss/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
/loss/softmax_cross_entropy_with_logits_sg/SliceSlice1loss/softmax_cross_entropy_with_logits_sg/Shape_15loss/softmax_cross_entropy_with_logits_sg/Slice/begin4loss/softmax_cross_entropy_with_logits_sg/Slice/size*
_output_shapes
:*
Index0*
T0
�
9loss/softmax_cross_entropy_with_logits_sg/concat/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
w
5loss/softmax_cross_entropy_with_logits_sg/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
0loss/softmax_cross_entropy_with_logits_sg/concatConcatV29loss/softmax_cross_entropy_with_logits_sg/concat/values_0/loss/softmax_cross_entropy_with_logits_sg/Slice5loss/softmax_cross_entropy_with_logits_sg/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
1loss/softmax_cross_entropy_with_logits_sg/ReshapeReshapesoftmax/BiasAdd0loss/softmax_cross_entropy_with_logits_sg/concat*0
_output_shapes
:������������������*
T0*
Tshape0
r
0loss/softmax_cross_entropy_with_logits_sg/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
�
1loss/softmax_cross_entropy_with_logits_sg/Shape_2Shape>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
T0*
out_type0*
_output_shapes
:
s
1loss/softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
/loss/softmax_cross_entropy_with_logits_sg/Sub_1Sub0loss/softmax_cross_entropy_with_logits_sg/Rank_21loss/softmax_cross_entropy_with_logits_sg/Sub_1/y*
T0*
_output_shapes
: 
�
7loss/softmax_cross_entropy_with_logits_sg/Slice_1/beginPack/loss/softmax_cross_entropy_with_logits_sg/Sub_1*
_output_shapes
:*
T0*

axis *
N
�
6loss/softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
�
1loss/softmax_cross_entropy_with_logits_sg/Slice_1Slice1loss/softmax_cross_entropy_with_logits_sg/Shape_27loss/softmax_cross_entropy_with_logits_sg/Slice_1/begin6loss/softmax_cross_entropy_with_logits_sg/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
;loss/softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
y
7loss/softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
2loss/softmax_cross_entropy_with_logits_sg/concat_1ConcatV2;loss/softmax_cross_entropy_with_logits_sg/concat_1/values_01loss/softmax_cross_entropy_with_logits_sg/Slice_17loss/softmax_cross_entropy_with_logits_sg/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
3loss/softmax_cross_entropy_with_logits_sg/Reshape_1Reshape>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradient2loss/softmax_cross_entropy_with_logits_sg/concat_1*
T0*
Tshape0*0
_output_shapes
:������������������
�
)loss/softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits1loss/softmax_cross_entropy_with_logits_sg/Reshape3loss/softmax_cross_entropy_with_logits_sg/Reshape_1*
T0*?
_output_shapes-
+:���������:������������������
s
1loss/softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
/loss/softmax_cross_entropy_with_logits_sg/Sub_2Sub.loss/softmax_cross_entropy_with_logits_sg/Rank1loss/softmax_cross_entropy_with_logits_sg/Sub_2/y*
T0*
_output_shapes
: 
�
7loss/softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
6loss/softmax_cross_entropy_with_logits_sg/Slice_2/sizePack/loss/softmax_cross_entropy_with_logits_sg/Sub_2*
T0*

axis *
N*
_output_shapes
:
�
1loss/softmax_cross_entropy_with_logits_sg/Slice_2Slice/loss/softmax_cross_entropy_with_logits_sg/Shape7loss/softmax_cross_entropy_with_logits_sg/Slice_2/begin6loss/softmax_cross_entropy_with_logits_sg/Slice_2/size*
Index0*
T0*#
_output_shapes
:���������
�
3loss/softmax_cross_entropy_with_logits_sg/Reshape_2Reshape)loss/softmax_cross_entropy_with_logits_sg1loss/softmax_cross_entropy_with_logits_sg/Slice_2*
T0*
Tshape0*#
_output_shapes
:���������
T

loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
	loss/MeanMean3loss/softmax_cross_entropy_with_logits_sg/Reshape_2
loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
R
loss_1/tagsConst*
valueB Bloss_1*
dtype0*
_output_shapes
: 
P
loss_1ScalarSummaryloss_1/tags	loss/Mean*
T0*
_output_shapes
: 
�
train/gradients/ShapeShape3loss/softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
out_type0*
_output_shapes
:
^
train/gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/grad_ys_0*#
_output_shapes
:���������*
T0*

index_type0
Y
train/gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
�
train/gradients/f_count_1Entertrain/gradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: **

frame_namelm/rnn/while/while_context
�
train/gradients/MergeMergetrain/gradients/f_count_1train/gradients/NextIteration*
_output_shapes
: : *
T0*
N
q
train/gradients/SwitchSwitchtrain/gradients/Mergelm/rnn/while/LoopCond*
T0*
_output_shapes
: : 
o
train/gradients/Add/yConst^lm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
l
train/gradients/AddAddtrain/gradients/Switch:1train/gradients/Add/y*
T0*
_output_shapes
: 
�
train/gradients/NextIterationNextIterationtrain/gradients/Addd^train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2j^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2h^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2d^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2d^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPushV2d^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPushV2d^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPushV2d^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPushV2`^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2b^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2*
_output_shapes
: *
T0
Z
train/gradients/f_count_2Exittrain/gradients/Switch*
_output_shapes
: *
T0
Y
train/gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
�
train/gradients/b_count_1Entertrain/gradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*train/gradients/lm/rnn/while/while_context
�
train/gradients/Merge_1Mergetrain/gradients/b_count_1train/gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
�
train/gradients/GreaterEqualGreaterEqualtrain/gradients/Merge_1"train/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
�
"train/gradients/GreaterEqual/EnterEntertrain/gradients/b_count*
parallel_iterations *
_output_shapes
: *:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*
is_constant(
[
train/gradients/b_count_2LoopCondtrain/gradients/GreaterEqual*
_output_shapes
: 
y
train/gradients/Switch_1Switchtrain/gradients/Merge_1train/gradients/b_count_2*
T0*
_output_shapes
: : 
{
train/gradients/SubSubtrain/gradients/Switch_1:1"train/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
�
train/gradients/NextIteration_1NextIterationtrain/gradients/Sub_^train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
\
train/gradients/b_count_3Exittrain/gradients/Switch_1*
_output_shapes
: *
T0
�
Ntrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ShapeShape)loss/softmax_cross_entropy_with_logits_sg*
T0*
out_type0*
_output_shapes
:
�
Ptrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeReshapetrain/gradients/FillNtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/Shape*
Tshape0*#
_output_shapes
:���������*
T0
�
train/gradients/zeros_like	ZerosLike+loss/softmax_cross_entropy_with_logits_sg:1*0
_output_shapes
:������������������*
T0
�
Mtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
Itrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims
ExpandDimsPtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeMtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
Btrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mulMulItrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims+loss/softmax_cross_entropy_with_logits_sg:1*
T0*0
_output_shapes
:������������������
�
Itrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax
LogSoftmax1loss/softmax_cross_entropy_with_logits_sg/Reshape*0
_output_shapes
:������������������*
T0
�
Btrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/NegNegItrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax*0
_output_shapes
:������������������*
T0
�
Otrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Ktrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1
ExpandDimsPtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeOtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dim*'
_output_shapes
:���������*

Tdim0*
T0
�
Dtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul_1MulKtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1Btrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/Neg*0
_output_shapes
:������������������*
T0
�
Ltrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/ShapeShapesoftmax/BiasAdd*
T0*
out_type0*
_output_shapes
:
�
Ntrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeReshapeBtrain/gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mulLtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Shape*(
_output_shapes
:����������/*
T0*
Tshape0
�
0train/gradients/softmax/BiasAdd_grad/BiasAddGradBiasAddGradNtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes	
:�/
�
*train/gradients/softmax/MatMul_grad/MatMulMatMulNtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshapesoftmax_w/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
,train/gradients/softmax/MatMul_grad/MatMul_1MatMul
lm/ReshapeNtrain/gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape*
T0* 
_output_shapes
:
��/*
transpose_a(*
transpose_b( 
w
%train/gradients/lm/Reshape_grad/ShapeShapelm/rnn/transpose_1*
T0*
out_type0*
_output_shapes
:
�
'train/gradients/lm/Reshape_grad/ReshapeReshape*train/gradients/softmax/MatMul_grad/MatMul%train/gradients/lm/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:@����������
�
9train/gradients/lm/rnn/transpose_1_grad/InvertPermutationInvertPermutationlm/rnn/concat_2*
_output_shapes
:*
T0
�
1train/gradients/lm/rnn/transpose_1_grad/transpose	Transpose'train/gradients/lm/Reshape_grad/Reshape9train/gradients/lm/rnn/transpose_1_grad/InvertPermutation*
T0*,
_output_shapes
:���������@�*
Tperm0
�
btrain/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3lm/rnn/TensorArraylm/rnn/while/Exit_2*%
_class
loc:@lm/rnn/TensorArray*
sourcetrain/gradients*
_output_shapes

:: 
�
^train/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentitylm/rnn/while/Exit_2c^train/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*%
_class
loc:@lm/rnn/TensorArray*
_output_shapes
: 
�
htrain/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3btrain/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3lm/rnn/TensorArrayStack/range1train/gradients/lm/rnn/transpose_1_grad/transpose^train/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
v
%train/gradients/zeros/shape_as_tensorConst*
valueB"@   �   *
dtype0*
_output_shapes
:
`
train/gradients/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
train/gradients/zerosFill%train/gradients/zeros/shape_as_tensortrain/gradients/zeros/Const*
T0*

index_type0*
_output_shapes
:	@�
x
'train/gradients/zeros_1/shape_as_tensorConst*
valueB"@   �   *
dtype0*
_output_shapes
:
b
train/gradients/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
train/gradients/zeros_1Fill'train/gradients/zeros_1/shape_as_tensortrain/gradients/zeros_1/Const*

index_type0*
_output_shapes
:	@�*
T0
x
'train/gradients/zeros_2/shape_as_tensorConst*
_output_shapes
:*
valueB"@   �   *
dtype0
b
train/gradients/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
train/gradients/zeros_2Fill'train/gradients/zeros_2/shape_as_tensortrain/gradients/zeros_2/Const*
T0*

index_type0*
_output_shapes
:	@�
x
'train/gradients/zeros_3/shape_as_tensorConst*
_output_shapes
:*
valueB"@   �   *
dtype0
b
train/gradients/zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
train/gradients/zeros_3Fill'train/gradients/zeros_3/shape_as_tensortrain/gradients/zeros_3/Const*
T0*

index_type0*
_output_shapes
:	@�
�
/train/gradients/lm/rnn/while/Exit_2_grad/b_exitEnterhtrain/gradients/lm/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*train/gradients/lm/rnn/while/while_context
�
/train/gradients/lm/rnn/while/Exit_3_grad/b_exitEntertrain/gradients/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
/train/gradients/lm/rnn/while/Exit_4_grad/b_exitEntertrain/gradients/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
/train/gradients/lm/rnn/while/Exit_5_grad/b_exitEntertrain/gradients/zeros_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
/train/gradients/lm/rnn/while/Exit_6_grad/b_exitEntertrain/gradients/zeros_3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	@�*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
3train/gradients/lm/rnn/while/Switch_2_grad/b_switchMerge/train/gradients/lm/rnn/while/Exit_2_grad/b_exit:train/gradients/lm/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
�
3train/gradients/lm/rnn/while/Switch_3_grad/b_switchMerge/train/gradients/lm/rnn/while/Exit_3_grad/b_exit:train/gradients/lm/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	@�: 
�
3train/gradients/lm/rnn/while/Switch_4_grad/b_switchMerge/train/gradients/lm/rnn/while/Exit_4_grad/b_exit:train/gradients/lm/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	@�: 
�
3train/gradients/lm/rnn/while/Switch_5_grad/b_switchMerge/train/gradients/lm/rnn/while/Exit_5_grad/b_exit:train/gradients/lm/rnn/while/Switch_5_grad_1/NextIteration*!
_output_shapes
:	@�: *
T0*
N
�
3train/gradients/lm/rnn/while/Switch_6_grad/b_switchMerge/train/gradients/lm/rnn/while/Exit_6_grad/b_exit:train/gradients/lm/rnn/while/Switch_6_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	@�: 
�
0train/gradients/lm/rnn/while/Merge_2_grad/SwitchSwitch3train/gradients/lm/rnn/while/Switch_2_grad/b_switchtrain/gradients/b_count_2*
_output_shapes
: : *
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_2_grad/b_switch
�
0train/gradients/lm/rnn/while/Merge_3_grad/SwitchSwitch3train/gradients/lm/rnn/while/Switch_3_grad/b_switchtrain/gradients/b_count_2*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_3_grad/b_switch**
_output_shapes
:	@�:	@�
�
0train/gradients/lm/rnn/while/Merge_4_grad/SwitchSwitch3train/gradients/lm/rnn/while/Switch_4_grad/b_switchtrain/gradients/b_count_2*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_4_grad/b_switch**
_output_shapes
:	@�:	@�
�
0train/gradients/lm/rnn/while/Merge_5_grad/SwitchSwitch3train/gradients/lm/rnn/while/Switch_5_grad/b_switchtrain/gradients/b_count_2*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_5_grad/b_switch**
_output_shapes
:	@�:	@�
�
0train/gradients/lm/rnn/while/Merge_6_grad/SwitchSwitch3train/gradients/lm/rnn/while/Switch_6_grad/b_switchtrain/gradients/b_count_2*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_6_grad/b_switch**
_output_shapes
:	@�:	@�
�
.train/gradients/lm/rnn/while/Enter_2_grad/ExitExit0train/gradients/lm/rnn/while/Merge_2_grad/Switch*
_output_shapes
: *
T0
�
.train/gradients/lm/rnn/while/Enter_3_grad/ExitExit0train/gradients/lm/rnn/while/Merge_3_grad/Switch*
T0*
_output_shapes
:	@�
�
.train/gradients/lm/rnn/while/Enter_4_grad/ExitExit0train/gradients/lm/rnn/while/Merge_4_grad/Switch*
_output_shapes
:	@�*
T0
�
.train/gradients/lm/rnn/while/Enter_5_grad/ExitExit0train/gradients/lm/rnn/while/Merge_5_grad/Switch*
T0*
_output_shapes
:	@�
�
.train/gradients/lm/rnn/while/Enter_6_grad/ExitExit0train/gradients/lm/rnn/while/Merge_6_grad/Switch*
T0*
_output_shapes
:	@�
�
gtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3mtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter2train/gradients/lm/rnn/while/Merge_2_grad/Switch:1*O
_classE
CAloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
sourcetrain/gradients*
_output_shapes

:: 
�
mtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterlm/rnn/TensorArray*
is_constant(*
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*O
_classE
CAloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
parallel_iterations 
�
ctrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity2train/gradients/lm/rnn/while/Merge_2_grad/Switch:1h^train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*O
_classE
CAloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5*
_output_shapes
: *
T0
�
Wtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3gtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3btrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2ctrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:	@�
�
]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst**
_class 
loc:@lm/rnn/while/Identity_1*
valueB :
���������*
dtype0*
_output_shapes
: 
�
]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*
_output_shapes
:*
	elem_type0**
_class 
loc:@lm/rnn/while/Identity_1*

stack_name 
�
]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnter]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0
�
ctrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterlm/rnn/while/Identity_1^train/gradients/Add*
_output_shapes
: *
swap_memory( *
T0
�
btrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
: *
	elem_type0
�
htrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
^train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerc^train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2i^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2g^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2c^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2c^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2c^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2c^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2c^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2_^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2a^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2
�
train/gradients/AddNAddN2train/gradients/lm/rnn/while/Merge_6_grad/Switch:1Wtrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_6_grad/b_switch*
N*
_output_shapes
:	@�
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/MulMultrain/gradients/AddN`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2*
T0*
_output_shapes
:	@�
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/ConstConst*
_output_shapes
: *S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5*
valueB :
���������*
dtype0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/Enter@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1Multrain/gradients/AddNbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2*
_output_shapes
:	@�*
T0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/ConstConst*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3*
valueB :
���������*
dtype0*
_output_shapes
: 
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/f_accStackV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/Const*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3*

stack_name *
_output_shapes
:*
	elem_type0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPushV2StackPushV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/Enter=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3_grad/TanhGradTanhGradbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPopV2Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul*
T0*
_output_shapes
:	@�
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5_grad/SigmoidGradSigmoidGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPopV2Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1*
T0*
_output_shapes
:	@�
�
:train/gradients/lm/rnn/while/Switch_2_grad_1/NextIterationNextIteration2train/gradients/lm/rnn/while/Merge_2_grad/Switch:1*
_output_shapes
: *
T0
�
train/gradients/AddN_1AddN2train/gradients/lm/rnn/while/Merge_5_grad/Switch:1[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3_grad/TanhGrad*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_5_grad/b_switch*
N*
_output_shapes
:	@�
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/MulMultrain/gradients/AddN_1`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2*
_output_shapes
:	@�*
T0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/ConstConst*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3*
valueB :
���������*
dtype0*
_output_shapes
: 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/Const*
	elem_type0*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3*

stack_name *
_output_shapes
:
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/Enter@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1Multrain/gradients/AddN_1btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	@�
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/ConstConst*
_output_shapes
: **
_class 
loc:@lm/rnn/while/Identity_5*
valueB :
���������*
dtype0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/f_accStackV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/Const**
_class 
loc:@lm/rnn/while/Identity_5*

stack_name *
_output_shapes
:*
	elem_type0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPushV2StackPushV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/Enterlm/rnn/while/Identity_5^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/MulMultrain/gradients/AddN_1`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2*
T0*
_output_shapes
:	@�
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/ConstConst*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2*
valueB :
���������*
dtype0*
_output_shapes
: 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/Const*
_output_shapes
:*
	elem_type0*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2*

stack_name 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/Enter=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1Multrain/gradients/AddN_1btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2*
_output_shapes
:	@�*
T0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/ConstConst*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4*
valueB :
���������*
dtype0*
_output_shapes
: 
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/f_accStackV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/Const*
_output_shapes
:*
	elem_type0*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4*

stack_name 
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPushV2StackPushV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/Enter@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*
is_constant(
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_grad/SigmoidGradSigmoidGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPopV2Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1*
T0*
_output_shapes
:	@�
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4_grad/SigmoidGradSigmoidGradbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPopV2Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul*
T0*
_output_shapes
:	@�
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2_grad/TanhGradTanhGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPopV2Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1*
T0*
_output_shapes
:	@�
�
:train/gradients/lm/rnn/while/Switch_5_grad_1/NextIterationNextIterationUtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul*
T0*
_output_shapes
:	@�
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/ShapeConst^train/gradients/Sub*
_output_shapes
:*
valueB"@   �   *
dtype0
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Shape_1Const^train/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
�
gtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/ShapeYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/SumSumatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_grad/SigmoidGradgtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/ReshapeReshapeUtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/SumWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:	@�
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Sum_1Sumatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3_grad/SigmoidGraditrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Reshape_1ReshapeWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Sum_1Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concatConcatV2atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4_grad/SigmoidGrad[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2_grad/TanhGradYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2_grad/Reshapeatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5_grad/SigmoidGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat/Const*
N*
_output_shapes
:	@�*

Tidx0*
T0
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat/ConstConst^train/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1_grad/BiasAddGradBiasAddGradZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat*
data_formatNHWC*
_output_shapes	
:�*
T0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMulMatMulZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concatatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul/Enter*
transpose_b(*
T0*
_output_shapes
:	@�*
transpose_a( 
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul/EnterEnter5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
is_constant(*
parallel_iterations * 
_output_shapes
:
��*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1MatMulhtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1_grad/concat*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/ConstConst*R
_classH
FDloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1*
valueB :
���������*
dtype0*
_output_shapes
: 
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/f_accStackV2ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/Const*
_output_shapes
:*
	elem_type0*R
_classH
FDloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1*

stack_name 
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/EnterEnterctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0*
is_constant(
�
itrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/Enter?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2ntrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ntrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConstConst^train/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/RankConst^train/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
�
Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/modFloorModZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConstYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Rank*
T0*
_output_shapes
: 
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ShapeConst^train/gradients/Sub*
valueB"@   �   *
dtype0*
_output_shapes
:
�
\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape_1Const^train/gradients/Sub*
valueB"@   �   *
dtype0*
_output_shapes
:
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConcatOffsetConcatOffsetXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/modZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape_1*
N* 
_output_shapes
::
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/SliceSlice[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMulatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConcatOffsetZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape*
_output_shapes
:	@�*
Index0*
T0
�
\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Slice_1Slice[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMulctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/ConcatOffset:1\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Shape_1*
Index0*
T0*
_output_shapes
:	@�
�
train/gradients/AddN_2AddN2train/gradients/lm/rnn/while/Merge_4_grad/Switch:1Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Slice*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_4_grad/b_switch*
N*
_output_shapes
:	@�
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/MulMultrain/gradients/AddN_2`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2*
T0*
_output_shapes
:	@�
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/ConstConst*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
valueB :
���������*
dtype0*
_output_shapes
: 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Const*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*

stack_name *
_output_shapes
:*
	elem_type0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Enter@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1Multrain/gradients/AddN_2btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2*
_output_shapes
:	@�*
T0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/ConstConst*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*
valueB :
���������*
dtype0*
_output_shapes
: 
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_accStackV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Const*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*

stack_name *
_output_shapes
:*
	elem_type0
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2StackPushV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Enter=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul*
_output_shapes
:	@�*
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1*
_output_shapes
:	@�*
T0
�
:train/gradients/lm/rnn/while/Switch_6_grad_1/NextIterationNextIteration\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1_grad/Slice_1*
T0*
_output_shapes
:	@�
�
train/gradients/AddN_3AddN2train/gradients/lm/rnn/while/Merge_3_grad/Switch:1[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGrad*
_output_shapes
:	@�*
T0*F
_class<
:8loc:@train/gradients/lm/rnn/while/Switch_3_grad/b_switch*
N
�
Strain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/MulMultrain/gradients/AddN_3^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2*
T0*
_output_shapes
:	@�
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/ConstConst*Q
_classG
ECloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_accStackV2Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Const*Q
_classG
ECloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/EnterEnterYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2StackPushV2Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Enter>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2
StackPopV2dtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
dtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2/EnterEnterYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1Multrain/gradients/AddN_3`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	@�
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/ConstConst**
_class 
loc:@lm/rnn/while/Identity_3*
valueB :
���������*
dtype0*
_output_shapes
: 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/Const**
_class 
loc:@lm/rnn/while/Identity_3*

stack_name *
_output_shapes
:*
	elem_type0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/Enterlm/rnn/while/Identity_3^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
	elem_type0*
_output_shapes
:	@�
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/MulMultrain/gradients/AddN_3`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2*
_output_shapes
:	@�*
T0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/ConstConst*N
_classD
B@loc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
valueB :
���������*
dtype0*
_output_shapes
: 
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_accStackV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Const*N
_classD
B@loc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2StackPushV2[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Enter;lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2
StackPopV2ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/EnterEnter[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*
is_constant(
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1Multrain/gradients/AddN_3btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	@�
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/ConstConst*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*
valueB :
���������*
dtype0*
_output_shapes
: 
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_accStackV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Const*
_output_shapes
:*
	elem_type0*S
_classI
GEloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*

stack_name 
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context
�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2StackPushV2]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Enter@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1^train/gradients/Add*
_output_shapes
:	@�*
swap_memory( *
T0
�
btrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2
StackPopV2htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
htrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/EnterEnter]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGrad^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1*
_output_shapes
:	@�*
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul*
_output_shapes
:	@�*
T0
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGradTanhGrad`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1*
T0*
_output_shapes
:	@�
�
:train/gradients/lm/rnn/while/Switch_3_grad_1/NextIterationNextIterationStrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul*
_output_shapes
:	@�*
T0
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ShapeConst^train/gradients/Sub*
valueB"@   �   *
dtype0*
_output_shapes
:
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1Const^train/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
�
etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgsBroadcastGradientArgsUtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ShapeWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Strain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/SumSum_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradetrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ReshapeReshapeStrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/SumUtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape*
_output_shapes
:	@�*
T0*
Tshape0
�
Utrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum_1Sum_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradgtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1ReshapeUtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum_1Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatConcatV2atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGradWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshapeatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGrad^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/Const*
_output_shapes
:	@�*

Tidx0*
T0*
N
�
^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/ConstConst^train/gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat*
data_formatNHWC*
_output_shapes	
:�*
T0
�
Ytrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulMatMulXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul/Enter*
T0*
_output_shapes
:	@�*
transpose_a( *
transpose_b(
�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1MatMulftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat* 
_output_shapes
:
��*
transpose_a(*
transpose_b( *
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/ConstConst*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat*
valueB :
���������*
dtype0*
_output_shapes
: 
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Const*
	elem_type0*P
_classF
DBloc:@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat*

stack_name *
_output_shapes
:
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/EnterEnteratrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:**

frame_namelm/rnn/while/while_context*
T0*
is_constant(
�
gtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Enter=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat^train/gradients/Add*
T0*
_output_shapes
:	@�*
swap_memory( 
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2ltrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^train/gradients/Sub*
_output_shapes
:	@�*
	elem_type0
�
ltrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnteratrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
train/gradients/AddN_4AddNatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1_grad/BiasAddGrad_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGrad*
T0*t
_classj
hfloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1_grad/BiasAddGrad*
N*
_output_shapes	
:�
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueB�*    *
dtype0*
_output_shapes	
:�
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1Enter_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
parallel_iterations *
_output_shapes	
:�*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*
is_constant( 
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergeatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1gtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
N*
_output_shapes
	:�: *
T0
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2train/gradients/b_count_2*
T0*"
_output_shapes
:�:�
�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/AddAddbtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Switch:1train/gradients/AddN_4*
T0*
_output_shapes	
:�
�
gtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIteration]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Add*
_output_shapes	
:�*
T0
�
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3Exit`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Switch*
_output_shapes	
:�*
T0
�
Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConstConst^train/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
�
Wtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/RankConst^train/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
�
Vtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/modFloorModXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConstWtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeConst^train/gradients/Sub*
valueB"@   �   *
dtype0*
_output_shapes
:
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape_1Const^train/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"@   �   
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffsetVtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/modXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/SliceSliceYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffsetXtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape*
_output_shapes
:	@�*
Index0*
T0
�
Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1SliceYtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffset:1Ztrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes
:	@�
�
train/gradients/AddN_5AddN]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1*p
_classf
dbloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1*
N* 
_output_shapes
:
��*
T0
�
^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
��*    *
dtype0* 
_output_shapes
:
��
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_1Enter^train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
��*:

frame_name,*train/gradients/lm/rnn/while/while_context
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_2Merge`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_1ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
��: 
�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/SwitchSwitch`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_2train/gradients/b_count_2*
T0*,
_output_shapes
:
��:
��
�
\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/AddAddatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Switch:1train/gradients/AddN_5* 
_output_shapes
:
��*
T0
�
ftrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIteration\train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
��
�
`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3Exit_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
��
�
Utrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3[train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter]train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^train/gradients/Sub*7
_class-
+)loc:@lm/rnn/while/TensorArrayReadV3/Enter*
sourcetrain/gradients*
_output_shapes

:: 
�
[train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterlm/rnn/TensorArray_1*
is_constant(*
_output_shapes
:*:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*7
_class-
+)loc:@lm/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
�
]train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterAlm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
_output_shapes
: *:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*7
_class-
+)loc:@lm/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
�
Qtrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentity]train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1V^train/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*7
_class-
+)loc:@lm/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
�
Wtrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Utrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3btrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Xtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/SliceQtrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
�
Atrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ctrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterAtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
parallel_iterations *
_output_shapes
: *:

frame_name,*train/gradients/lm/rnn/while/while_context*
T0*
is_constant( 
�
Ctrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeCtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Itrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
�
Btrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchCtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2train/gradients/b_count_2*
T0*
_output_shapes
: : 
�
?train/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddDtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Wtrain/gradients/lm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
�
Itrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration?train/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
�
Ctrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitBtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
_output_shapes
: *
T0
�
:train/gradients/lm/rnn/while/Switch_4_grad_1/NextIterationNextIterationZtrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1*
T0*
_output_shapes
:	@�
�
xtrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3lm/rnn/TensorArray_1Ctrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*'
_class
loc:@lm/rnn/TensorArray_1*
sourcetrain/gradients*
_output_shapes

:: 
�
ttrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityCtrain/gradients/lm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3y^train/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*'
_class
loc:@lm/rnn/TensorArray_1*
_output_shapes
: *
T0
�
jtrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3xtrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3lm/rnn/TensorArrayUnstack/rangettrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*,
_output_shapes
:���������@�*
element_shape:
�
7train/gradients/lm/rnn/transpose_grad/InvertPermutationInvertPermutationlm/rnn/concat*
_output_shapes
:*
T0
�
/train/gradients/lm/rnn/transpose_grad/transpose	Transposejtrain/gradients/lm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV37train/gradients/lm/rnn/transpose_grad/InvertPermutation*
T0*,
_output_shapes
:@����������*
Tperm0
�
.train/gradients/lm/embedding_lookup_grad/ShapeConst*
_class
loc:@embedding*%
valueB	"�      �       *
dtype0	*
_output_shapes
:
�
0train/gradients/lm/embedding_lookup_grad/ToInt32Cast.train/gradients/lm/embedding_lookup_grad/Shape*

SrcT0	*
_class
loc:@embedding*
_output_shapes
:*

DstT0
y
-train/gradients/lm/embedding_lookup_grad/SizeSizeinput/Placeholder*
T0*
out_type0*
_output_shapes
: 
y
7train/gradients/lm/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
3train/gradients/lm/embedding_lookup_grad/ExpandDims
ExpandDims-train/gradients/lm/embedding_lookup_grad/Size7train/gradients/lm/embedding_lookup_grad/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
�
<train/gradients/lm/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
>train/gradients/lm/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
>train/gradients/lm/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
6train/gradients/lm/embedding_lookup_grad/strided_sliceStridedSlice0train/gradients/lm/embedding_lookup_grad/ToInt32<train/gradients/lm/embedding_lookup_grad/strided_slice/stack>train/gradients/lm/embedding_lookup_grad/strided_slice/stack_1>train/gradients/lm/embedding_lookup_grad/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0
v
4train/gradients/lm/embedding_lookup_grad/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
/train/gradients/lm/embedding_lookup_grad/concatConcatV23train/gradients/lm/embedding_lookup_grad/ExpandDims6train/gradients/lm/embedding_lookup_grad/strided_slice4train/gradients/lm/embedding_lookup_grad/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
0train/gradients/lm/embedding_lookup_grad/ReshapeReshape/train/gradients/lm/rnn/transpose_grad/transpose/train/gradients/lm/embedding_lookup_grad/concat*
T0*
Tshape0*(
_output_shapes
:����������
�
2train/gradients/lm/embedding_lookup_grad/Reshape_1Reshapeinput/Placeholder3train/gradients/lm/embedding_lookup_grad/ExpandDims*#
_output_shapes
:���������*
T0*
Tshape0
�
train/global_norm/L2LossL2Loss0train/gradients/lm/embedding_lookup_grad/Reshape*
_output_shapes
: *
T0*C
_class9
75loc:@train/gradients/lm/embedding_lookup_grad/Reshape
�
train/global_norm/L2Loss_1L2Loss`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
_output_shapes
: *
T0*s
_classi
geloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3
�
train/global_norm/L2Loss_2L2Lossatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*t
_classj
hfloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes
: 
�
train/global_norm/L2Loss_3L2Loss,train/gradients/softmax/MatMul_grad/MatMul_1*
T0*?
_class5
31loc:@train/gradients/softmax/MatMul_grad/MatMul_1*
_output_shapes
: 
�
train/global_norm/L2Loss_4L2Loss0train/gradients/softmax/BiasAdd_grad/BiasAddGrad*C
_class9
75loc:@train/gradients/softmax/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
�
train/global_norm/stackPacktrain/global_norm/L2Losstrain/global_norm/L2Loss_1train/global_norm/L2Loss_2train/global_norm/L2Loss_3train/global_norm/L2Loss_4*

axis *
N*
_output_shapes
:*
T0
a
train/global_norm/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
train/global_norm/SumSumtrain/global_norm/stacktrain/global_norm/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
^
train/global_norm/Const_1Const*
valueB
 *   @*
dtype0*
_output_shapes
: 
o
train/global_norm/mulMultrain/global_norm/Sumtrain/global_norm/Const_1*
_output_shapes
: *
T0
]
train/global_norm/global_normSqrttrain/global_norm/mul*
_output_shapes
: *
T0
h
#train/clip_by_global_norm/truediv/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
!train/clip_by_global_norm/truedivRealDiv#train/clip_by_global_norm/truediv/xtrain/global_norm/global_norm*
_output_shapes
: *
T0
d
train/clip_by_global_norm/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
j
%train/clip_by_global_norm/truediv_1/yConst*
valueB
 *  �@*
dtype0*
_output_shapes
: 
�
#train/clip_by_global_norm/truediv_1RealDivtrain/clip_by_global_norm/Const%train/clip_by_global_norm/truediv_1/y*
T0*
_output_shapes
: 
�
!train/clip_by_global_norm/MinimumMinimum!train/clip_by_global_norm/truediv#train/clip_by_global_norm/truediv_1*
T0*
_output_shapes
: 
d
train/clip_by_global_norm/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �@
�
train/clip_by_global_norm/mulMultrain/clip_by_global_norm/mul/x!train/clip_by_global_norm/Minimum*
T0*
_output_shapes
: 
�
train/clip_by_global_norm/mul_1Mul0train/gradients/lm/embedding_lookup_grad/Reshapetrain/clip_by_global_norm/mul*C
_class9
75loc:@train/gradients/lm/embedding_lookup_grad/Reshape*(
_output_shapes
:����������*
T0
�
6train/clip_by_global_norm/train/clip_by_global_norm/_0Identitytrain/clip_by_global_norm/mul_1*C
_class9
75loc:@train/gradients/lm/embedding_lookup_grad/Reshape*(
_output_shapes
:����������*
T0
�
train/clip_by_global_norm/mul_2Mul`train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3train/clip_by_global_norm/mul* 
_output_shapes
:
��*
T0*s
_classi
geloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3
�
6train/clip_by_global_norm/train/clip_by_global_norm/_1Identitytrain/clip_by_global_norm/mul_2*
T0*s
_classi
geloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3* 
_output_shapes
:
��
�
train/clip_by_global_norm/mul_3Mulatrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3train/clip_by_global_norm/mul*
T0*t
_classj
hfloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes	
:�
�
6train/clip_by_global_norm/train/clip_by_global_norm/_2Identitytrain/clip_by_global_norm/mul_3*
T0*t
_classj
hfloc:@train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes	
:�
�
train/clip_by_global_norm/mul_4Mul,train/gradients/softmax/MatMul_grad/MatMul_1train/clip_by_global_norm/mul*
T0*?
_class5
31loc:@train/gradients/softmax/MatMul_grad/MatMul_1* 
_output_shapes
:
��/
�
6train/clip_by_global_norm/train/clip_by_global_norm/_3Identitytrain/clip_by_global_norm/mul_4*
T0*?
_class5
31loc:@train/gradients/softmax/MatMul_grad/MatMul_1* 
_output_shapes
:
��/
�
train/clip_by_global_norm/mul_5Mul0train/gradients/softmax/BiasAdd_grad/BiasAddGradtrain/clip_by_global_norm/mul*
_output_shapes	
:�/*
T0*C
_class9
75loc:@train/gradients/softmax/BiasAdd_grad/BiasAddGrad
�
6train/clip_by_global_norm/train/clip_by_global_norm/_4Identitytrain/clip_by_global_norm/mul_5*
T0*C
_class9
75loc:@train/gradients/softmax/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�/
�
train/beta1_power/initial_valueConst*
_class
loc:@embedding*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
train/beta1_power
VariableV2*
shared_name *
_class
loc:@embedding*
	container *
shape: *
dtype0*
_output_shapes
: 
�
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
use_locking(*
T0*
_class
loc:@embedding*
validate_shape(*
_output_shapes
: 
t
train/beta1_power/readIdentitytrain/beta1_power*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
train/beta2_power/initial_valueConst*
_class
loc:@embedding*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
train/beta2_power
VariableV2*
_class
loc:@embedding*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
_class
loc:@embedding*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
t
train/beta2_power/readIdentitytrain/beta2_power*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
0embedding/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@embedding*
valueB"�  �   *
dtype0*
_output_shapes
:
�
&embedding/Adam/Initializer/zeros/ConstConst*
_class
loc:@embedding*
valueB
 *    *
dtype0*
_output_shapes
: 
�
 embedding/Adam/Initializer/zerosFill0embedding/Adam/Initializer/zeros/shape_as_tensor&embedding/Adam/Initializer/zeros/Const*
T0*
_class
loc:@embedding*

index_type0* 
_output_shapes
:
�/�
�
embedding/Adam
VariableV2*
shared_name *
_class
loc:@embedding*
	container *
shape:
�/�*
dtype0* 
_output_shapes
:
�/�
�
embedding/Adam/AssignAssignembedding/Adam embedding/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
�/�*
use_locking(*
T0*
_class
loc:@embedding
x
embedding/Adam/readIdentityembedding/Adam*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
2embedding/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@embedding*
valueB"�  �   *
dtype0
�
(embedding/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@embedding*
valueB
 *    *
dtype0*
_output_shapes
: 
�
"embedding/Adam_1/Initializer/zerosFill2embedding/Adam_1/Initializer/zeros/shape_as_tensor(embedding/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
�/�*
T0*
_class
loc:@embedding*

index_type0
�
embedding/Adam_1
VariableV2* 
_output_shapes
:
�/�*
shared_name *
_class
loc:@embedding*
	container *
shape:
�/�*
dtype0
�
embedding/Adam_1/AssignAssignembedding/Adam_1"embedding/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
�/�
|
embedding/Adam_1/readIdentityembedding/Adam_1*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
Wrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB"      *
dtype0
�
Mrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zerosFillWrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorMrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*

index_type0* 
_output_shapes
:
��
�
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
��*
shared_name *C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container *
shape:
��
�
<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/AssignAssign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamGrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/readIdentity5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam* 
_output_shapes
:
��*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
�
Yrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
�
Ornn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Irnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zerosFillYrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorOrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*

index_type0* 
_output_shapes
:
��
�
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1
VariableV2*
shared_name *C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container *
shape:
��*
dtype0* 
_output_shapes
:
��
�
>rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/AssignAssign7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1Irnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
��*
use_locking(
�
<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/readIdentity7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1*
T0*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
��
�
Ernn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zerosConst*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape:�
�
:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/AssignAssign3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamErnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:�*
use_locking(*
T0
�
8rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/readIdentity3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam*
_output_shapes	
:�*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias
�
Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:�*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
valueB�*    
�
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:�*
shared_name *A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape:�
�
<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/AssignAssign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:�
�
:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/readIdentity5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:�
�
0softmax_w/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@softmax_w*
valueB"�   �  *
dtype0*
_output_shapes
:
�
&softmax_w/Adam/Initializer/zeros/ConstConst*
_class
loc:@softmax_w*
valueB
 *    *
dtype0*
_output_shapes
: 
�
 softmax_w/Adam/Initializer/zerosFill0softmax_w/Adam/Initializer/zeros/shape_as_tensor&softmax_w/Adam/Initializer/zeros/Const* 
_output_shapes
:
��/*
T0*
_class
loc:@softmax_w*

index_type0
�
softmax_w/Adam
VariableV2*
dtype0* 
_output_shapes
:
��/*
shared_name *
_class
loc:@softmax_w*
	container *
shape:
��/
�
softmax_w/Adam/AssignAssignsoftmax_w/Adam softmax_w/Adam/Initializer/zeros*
_class
loc:@softmax_w*
validate_shape(* 
_output_shapes
:
��/*
use_locking(*
T0
x
softmax_w/Adam/readIdentitysoftmax_w/Adam*
T0*
_class
loc:@softmax_w* 
_output_shapes
:
��/
�
2softmax_w/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@softmax_w*
valueB"�   �  *
dtype0*
_output_shapes
:
�
(softmax_w/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@softmax_w*
valueB
 *    *
dtype0*
_output_shapes
: 
�
"softmax_w/Adam_1/Initializer/zerosFill2softmax_w/Adam_1/Initializer/zeros/shape_as_tensor(softmax_w/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@softmax_w*

index_type0* 
_output_shapes
:
��/
�
softmax_w/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
��/*
shared_name *
_class
loc:@softmax_w*
	container *
shape:
��/
�
softmax_w/Adam_1/AssignAssignsoftmax_w/Adam_1"softmax_w/Adam_1/Initializer/zeros*
_class
loc:@softmax_w*
validate_shape(* 
_output_shapes
:
��/*
use_locking(*
T0
|
softmax_w/Adam_1/readIdentitysoftmax_w/Adam_1*
T0*
_class
loc:@softmax_w* 
_output_shapes
:
��/
�
0softmax_b/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@softmax_b*
valueB:�/*
dtype0*
_output_shapes
:
�
&softmax_b/Adam/Initializer/zeros/ConstConst*
_class
loc:@softmax_b*
valueB
 *    *
dtype0*
_output_shapes
: 
�
 softmax_b/Adam/Initializer/zerosFill0softmax_b/Adam/Initializer/zeros/shape_as_tensor&softmax_b/Adam/Initializer/zeros/Const*
_class
loc:@softmax_b*

index_type0*
_output_shapes	
:�/*
T0
�
softmax_b/Adam
VariableV2*
_class
loc:@softmax_b*
	container *
shape:�/*
dtype0*
_output_shapes	
:�/*
shared_name 
�
softmax_b/Adam/AssignAssignsoftmax_b/Adam softmax_b/Adam/Initializer/zeros*
_class
loc:@softmax_b*
validate_shape(*
_output_shapes	
:�/*
use_locking(*
T0
s
softmax_b/Adam/readIdentitysoftmax_b/Adam*
T0*
_class
loc:@softmax_b*
_output_shapes	
:�/
�
2softmax_b/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@softmax_b*
valueB:�/*
dtype0
�
(softmax_b/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@softmax_b*
valueB
 *    *
dtype0*
_output_shapes
: 
�
"softmax_b/Adam_1/Initializer/zerosFill2softmax_b/Adam_1/Initializer/zeros/shape_as_tensor(softmax_b/Adam_1/Initializer/zeros/Const*
_class
loc:@softmax_b*

index_type0*
_output_shapes	
:�/*
T0
�
softmax_b/Adam_1
VariableV2*
shape:�/*
dtype0*
_output_shapes	
:�/*
shared_name *
_class
loc:@softmax_b*
	container 
�
softmax_b/Adam_1/AssignAssignsoftmax_b/Adam_1"softmax_b/Adam_1/Initializer/zeros*
_output_shapes	
:�/*
use_locking(*
T0*
_class
loc:@softmax_b*
validate_shape(
w
softmax_b/Adam_1/readIdentitysoftmax_b/Adam_1*
T0*
_class
loc:@softmax_b*
_output_shapes	
:�/
U
train/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
train/Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
W
train/Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
"train/Adam/update_embedding/UniqueUnique2train/gradients/lm/embedding_lookup_grad/Reshape_1*
_class
loc:@embedding*2
_output_shapes 
:���������:���������*
out_idx0*
T0
�
!train/Adam/update_embedding/ShapeShape"train/Adam/update_embedding/Unique*
T0*
_class
loc:@embedding*
out_type0*
_output_shapes
:
�
/train/Adam/update_embedding/strided_slice/stackConst*
_class
loc:@embedding*
valueB: *
dtype0*
_output_shapes
:
�
1train/Adam/update_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
_class
loc:@embedding*
valueB:
�
1train/Adam/update_embedding/strided_slice/stack_2Const*
_class
loc:@embedding*
valueB:*
dtype0*
_output_shapes
:
�
)train/Adam/update_embedding/strided_sliceStridedSlice!train/Adam/update_embedding/Shape/train/Adam/update_embedding/strided_slice/stack1train/Adam/update_embedding/strided_slice/stack_11train/Adam/update_embedding/strided_slice/stack_2*
Index0*
T0*
_class
loc:@embedding*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
.train/Adam/update_embedding/UnsortedSegmentSumUnsortedSegmentSum6train/clip_by_global_norm/train/clip_by_global_norm/_0$train/Adam/update_embedding/Unique:1)train/Adam/update_embedding/strided_slice*
T0*
_class
loc:@embedding*(
_output_shapes
:����������*
Tnumsegments0*
Tindices0
�
!train/Adam/update_embedding/sub/xConst*
_class
loc:@embedding*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
train/Adam/update_embedding/subSub!train/Adam/update_embedding/sub/xtrain/beta2_power/read*
_output_shapes
: *
T0*
_class
loc:@embedding
�
 train/Adam/update_embedding/SqrtSqrttrain/Adam/update_embedding/sub*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
train/Adam/update_embedding/mulMullearning_rate/Variable/read train/Adam/update_embedding/Sqrt*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
#train/Adam/update_embedding/sub_1/xConst*
_class
loc:@embedding*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
!train/Adam/update_embedding/sub_1Sub#train/Adam/update_embedding/sub_1/xtrain/beta1_power/read*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
#train/Adam/update_embedding/truedivRealDivtrain/Adam/update_embedding/mul!train/Adam/update_embedding/sub_1*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
#train/Adam/update_embedding/sub_2/xConst*
dtype0*
_output_shapes
: *
_class
loc:@embedding*
valueB
 *  �?
�
!train/Adam/update_embedding/sub_2Sub#train/Adam/update_embedding/sub_2/xtrain/Adam/beta1*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
!train/Adam/update_embedding/mul_1Mul.train/Adam/update_embedding/UnsortedSegmentSum!train/Adam/update_embedding/sub_2*
T0*
_class
loc:@embedding*(
_output_shapes
:����������
�
!train/Adam/update_embedding/mul_2Mulembedding/Adam/readtrain/Adam/beta1* 
_output_shapes
:
�/�*
T0*
_class
loc:@embedding
�
"train/Adam/update_embedding/AssignAssignembedding/Adam!train/Adam/update_embedding/mul_2* 
_output_shapes
:
�/�*
use_locking( *
T0*
_class
loc:@embedding*
validate_shape(
�
&train/Adam/update_embedding/ScatterAdd
ScatterAddembedding/Adam"train/Adam/update_embedding/Unique!train/Adam/update_embedding/mul_1#^train/Adam/update_embedding/Assign* 
_output_shapes
:
�/�*
use_locking( *
Tindices0*
T0*
_class
loc:@embedding
�
!train/Adam/update_embedding/mul_3Mul.train/Adam/update_embedding/UnsortedSegmentSum.train/Adam/update_embedding/UnsortedSegmentSum*(
_output_shapes
:����������*
T0*
_class
loc:@embedding
�
#train/Adam/update_embedding/sub_3/xConst*
_class
loc:@embedding*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
!train/Adam/update_embedding/sub_3Sub#train/Adam/update_embedding/sub_3/xtrain/Adam/beta2*
_class
loc:@embedding*
_output_shapes
: *
T0
�
!train/Adam/update_embedding/mul_4Mul!train/Adam/update_embedding/mul_3!train/Adam/update_embedding/sub_3*
T0*
_class
loc:@embedding*(
_output_shapes
:����������
�
!train/Adam/update_embedding/mul_5Mulembedding/Adam_1/readtrain/Adam/beta2*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
$train/Adam/update_embedding/Assign_1Assignembedding/Adam_1!train/Adam/update_embedding/mul_5*
use_locking( *
T0*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
�/�
�
(train/Adam/update_embedding/ScatterAdd_1
ScatterAddembedding/Adam_1"train/Adam/update_embedding/Unique!train/Adam/update_embedding/mul_4%^train/Adam/update_embedding/Assign_1*
_class
loc:@embedding* 
_output_shapes
:
�/�*
use_locking( *
Tindices0*
T0
�
"train/Adam/update_embedding/Sqrt_1Sqrt(train/Adam/update_embedding/ScatterAdd_1*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
!train/Adam/update_embedding/mul_6Mul#train/Adam/update_embedding/truediv&train/Adam/update_embedding/ScatterAdd*
_class
loc:@embedding* 
_output_shapes
:
�/�*
T0
�
train/Adam/update_embedding/addAdd"train/Adam/update_embedding/Sqrt_1train/Adam/epsilon*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
%train/Adam/update_embedding/truediv_1RealDiv!train/Adam/update_embedding/mul_6train/Adam/update_embedding/add*
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
%train/Adam/update_embedding/AssignSub	AssignSub	embedding%train/Adam/update_embedding/truediv_1*
use_locking( *
T0*
_class
loc:@embedding* 
_output_shapes
:
�/�
�
&train/Adam/update_embedding/group_depsNoOp&^train/Adam/update_embedding/AssignSub'^train/Adam/update_embedding/ScatterAdd)^train/Adam/update_embedding/ScatterAdd_1*
_class
loc:@embedding
�
Ltrain/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam	ApplyAdam0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1train/beta1_power/readtrain/beta2_power/readlearning_rate/Variable/readtrain/Adam/beta1train/Adam/beta2train/Adam/epsilon6train/clip_by_global_norm/train/clip_by_global_norm/_1*C
_class9
75loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
��*
use_locking( *
T0
�
Jtrain/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam	ApplyAdam.rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias3rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1train/beta1_power/readtrain/beta2_power/readlearning_rate/Variable/readtrain/Adam/beta1train/Adam/beta2train/Adam/epsilon6train/clip_by_global_norm/train/clip_by_global_norm/_2*
T0*A
_class7
53loc:@rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
use_nesterov( *
_output_shapes	
:�*
use_locking( 
�
%train/Adam/update_softmax_w/ApplyAdam	ApplyAdam	softmax_wsoftmax_w/Adamsoftmax_w/Adam_1train/beta1_power/readtrain/beta2_power/readlearning_rate/Variable/readtrain/Adam/beta1train/Adam/beta2train/Adam/epsilon6train/clip_by_global_norm/train/clip_by_global_norm/_3*
use_locking( *
T0*
_class
loc:@softmax_w*
use_nesterov( * 
_output_shapes
:
��/
�
%train/Adam/update_softmax_b/ApplyAdam	ApplyAdam	softmax_bsoftmax_b/Adamsoftmax_b/Adam_1train/beta1_power/readtrain/beta2_power/readlearning_rate/Variable/readtrain/Adam/beta1train/Adam/beta2train/Adam/epsilon6train/clip_by_global_norm/train/clip_by_global_norm/_4*
use_locking( *
T0*
_class
loc:@softmax_b*
use_nesterov( *
_output_shapes	
:�/
�
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta1'^train/Adam/update_embedding/group_depsK^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdamM^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam&^train/Adam/update_softmax_b/ApplyAdam&^train/Adam/update_softmax_w/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@embedding
�
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
T0*
_class
loc:@embedding*
validate_shape(*
_output_shapes
: *
use_locking( 
�
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2'^train/Adam/update_embedding/group_depsK^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdamM^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam&^train/Adam/update_softmax_b/ApplyAdam&^train/Adam/update_softmax_w/ApplyAdam*
T0*
_class
loc:@embedding*
_output_shapes
: 
�
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
use_locking( *
T0*
_class
loc:@embedding*
validate_shape(*
_output_shapes
: 
�

train/AdamNoOp^train/Adam/Assign^train/Adam/Assign_1'^train/Adam/update_embedding/group_depsK^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdamM^train/Adam/update_rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam&^train/Adam/update_softmax_b/ApplyAdam&^train/Adam/update_softmax_w/ApplyAdam
�
initNoOp^embedding/Adam/Assign^embedding/Adam_1/Assign^embedding/Assign^learning_rate/Variable/Assign;^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Assign=^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Assign6^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign=^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Assign?^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Assign8^rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assign^softmax_b/Adam/Assign^softmax_b/Adam_1/Assign^softmax_b/Assign^softmax_w/Adam/Assign^softmax_w/Adam_1/Assign^softmax_w/Assign^train/beta1_power/Assign^train/beta2_power/Assign
\
Merge/MergeSummaryMergeSummarylearning_rate_1loss_1*
N*
_output_shapes
: ""�
trainable_variables��
Y
embedding:0embedding/Assignembedding/read:02&embedding/Initializer/random_uniform:0
�
2rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel:07rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assign7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:02Mrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform:0
�
0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias:05rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:02Brnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros:0
Y
softmax_w:0softmax_w/Assignsoftmax_w/read:02&softmax_w/Initializer/random_uniform:0
Y
softmax_b:0softmax_b/Assignsoftmax_b/read:02&softmax_b/Initializer/random_uniform:0",
	summaries

learning_rate_1:0
loss_1:0"
train_op


train/Adam"�l
while_context�l�l
�l
lm/rnn/while/while_context *lm/rnn/while/LoopCond:02lm/rnn/while/Merge:0:lm/rnn/while/Identity:0Blm/rnn/while/Exit:0Blm/rnn/while/Exit_1:0Blm/rnn/while/Exit_2:0Blm/rnn/while/Exit_3:0Blm/rnn/while/Exit_4:0Blm/rnn/while/Exit_5:0Blm/rnn/while/Exit_6:0Btrain/gradients/f_count_2:0J�h
lm/rnn/Minimum:0
lm/rnn/TensorArray:0
Clm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
lm/rnn/TensorArray_1:0
lm/rnn/strided_slice:0
lm/rnn/while/Enter:0
lm/rnn/while/Enter_1:0
lm/rnn/while/Enter_2:0
lm/rnn/while/Enter_3:0
lm/rnn/while/Enter_4:0
lm/rnn/while/Enter_5:0
lm/rnn/while/Enter_6:0
lm/rnn/while/Exit:0
lm/rnn/while/Exit_1:0
lm/rnn/while/Exit_2:0
lm/rnn/while/Exit_3:0
lm/rnn/while/Exit_4:0
lm/rnn/while/Exit_5:0
lm/rnn/while/Exit_6:0
lm/rnn/while/Identity:0
lm/rnn/while/Identity_1:0
lm/rnn/while/Identity_2:0
lm/rnn/while/Identity_3:0
lm/rnn/while/Identity_4:0
lm/rnn/while/Identity_5:0
lm/rnn/while/Identity_6:0
lm/rnn/while/Less/Enter:0
lm/rnn/while/Less:0
lm/rnn/while/Less_1/Enter:0
lm/rnn/while/Less_1:0
lm/rnn/while/LogicalAnd:0
lm/rnn/while/LoopCond:0
lm/rnn/while/Merge:0
lm/rnn/while/Merge:1
lm/rnn/while/Merge_1:0
lm/rnn/while/Merge_1:1
lm/rnn/while/Merge_2:0
lm/rnn/while/Merge_2:1
lm/rnn/while/Merge_3:0
lm/rnn/while/Merge_3:1
lm/rnn/while/Merge_4:0
lm/rnn/while/Merge_4:1
lm/rnn/while/Merge_5:0
lm/rnn/while/Merge_5:1
lm/rnn/while/Merge_6:0
lm/rnn/while/Merge_6:1
lm/rnn/while/NextIteration:0
lm/rnn/while/NextIteration_1:0
lm/rnn/while/NextIteration_2:0
lm/rnn/while/NextIteration_3:0
lm/rnn/while/NextIteration_4:0
lm/rnn/while/NextIteration_5:0
lm/rnn/while/NextIteration_6:0
lm/rnn/while/Switch:0
lm/rnn/while/Switch:1
lm/rnn/while/Switch_1:0
lm/rnn/while/Switch_1:1
lm/rnn/while/Switch_2:0
lm/rnn/while/Switch_2:1
lm/rnn/while/Switch_3:0
lm/rnn/while/Switch_3:1
lm/rnn/while/Switch_4:0
lm/rnn/while/Switch_4:1
lm/rnn/while/Switch_5:0
lm/rnn/while/Switch_5:1
lm/rnn/while/Switch_6:0
lm/rnn/while/Switch_6:1
&lm/rnn/while/TensorArrayReadV3/Enter:0
(lm/rnn/while/TensorArrayReadV3/Enter_1:0
 lm/rnn/while/TensorArrayReadV3:0
8lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
2lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
lm/rnn/while/add/y:0
lm/rnn/while/add:0
lm/rnn/while/add_1/y:0
lm/rnn/while/add_1:0
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_2:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Add_3:0
Flm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter:0
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd:0
Blm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_1:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const:0
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1:0
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2:0
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_3:0
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_4:0
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Const_5:0
Elm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter:0
?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul:0
Alm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1:0
<lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5:0
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid:0
Blm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1:0
Blm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2:0
Blm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_3:0
Blm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_4:0
Blm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_5:0
=lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh:0
?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1:0
?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_2:0
?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_3:0
Dlm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis:0
?lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat:0
Flm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1/axis:0
Alm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/concat_1:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:0
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:1
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:2
>lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split:3
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:0
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:1
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:2
@lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/split_1:3
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:0
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:0
train/gradients/Add/y:0
train/gradients/Add:0
train/gradients/Merge:0
train/gradients/Merge:1
train/gradients/NextIteration:0
train/gradients/Switch:0
train/gradients/Switch:1
train/gradients/f_count:0
train/gradients/f_count_1:0
train/gradients/f_count_2:0
_train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
etrain/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
_train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/Enter:0
ktrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2:0
etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc:0
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0
itrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Enter:0
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0
etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2:0
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Enter:0
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0
etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2:0
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/Enter:0
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/StackPushV2:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/f_acc:0
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/Enter:0
etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/StackPushV2:0
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/f_acc:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/Enter:0
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/StackPushV2:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/f_acc:0
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/Enter:0
etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/StackPushV2:0
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/f_acc:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/Enter:0
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/StackPushV2:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/f_acc:0
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/Enter:0
etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/StackPushV2:0
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/f_acc:0
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Enter:0
atrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2:0
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/Enter:0
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/StackPushV2:0
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_acc:0�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/f_acc:0_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul_1/Enter:0�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0o
Clm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0(lm/rnn/while/TensorArrayReadV3/Enter_1:0�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0P
lm/rnn/TensorArray:08lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Enter:0�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/f_acc:0]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1/Enter:0�
[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc:0[train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Enter:0�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Enter:03
lm/rnn/strided_slice:0lm/rnn/while/Less/Enter:0�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/f_acc:0]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_3_grad/Mul/Enter:0�
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:0Elm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter:0
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:0Flm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter:0�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/f_acc:0]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul/Enter:0�
etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc:0etrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_1_grad/MatMul_1/Enter:0/
lm/rnn/Minimum:0lm/rnn/while/Less_1/Enter:0�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/f_acc:0_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul_1/Enter:0�
_train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0_train/gradients/lm/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0@
lm/rnn/TensorArray_1:0&lm/rnn/while/TensorArrayReadV3/Enter:0�
_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/f_acc:0_train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_4_grad/Mul_1/Enter:0�
ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0ctrain/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0�
]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/f_acc:0]train/gradients/lm/rnn/while/rnn/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_5_grad/Mul/Enter:0Rlm/rnn/while/Enter:0Rlm/rnn/while/Enter_1:0Rlm/rnn/while/Enter_2:0Rlm/rnn/while/Enter_3:0Rlm/rnn/while/Enter_4:0Rlm/rnn/while/Enter_5:0Rlm/rnn/while/Enter_6:0Rtrain/gradients/f_count_1:0Zlm/rnn/strided_slice:0"�
	variables��
�
learning_rate/Variable:0learning_rate/Variable/Assignlearning_rate/Variable/read:02&learning_rate/Variable/initial_value:0
Y
embedding:0embedding/Assignembedding/read:02&embedding/Initializer/random_uniform:0
�
2rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel:07rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Assign7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:02Mrnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform:0
�
0rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias:05rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Assign5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:02Brnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros:0
Y
softmax_w:0softmax_w/Assignsoftmax_w/read:02&softmax_w/Initializer/random_uniform:0
Y
softmax_b:0softmax_b/Assignsoftmax_b/read:02&softmax_b/Initializer/random_uniform:0
l
train/beta1_power:0train/beta1_power/Assigntrain/beta1_power/read:02!train/beta1_power/initial_value:0
l
train/beta2_power:0train/beta2_power/Assigntrain/beta2_power/read:02!train/beta2_power/initial_value:0
d
embedding/Adam:0embedding/Adam/Assignembedding/Adam/read:02"embedding/Adam/Initializer/zeros:0
l
embedding/Adam_1:0embedding/Adam_1/Assignembedding/Adam_1/read:02$embedding/Adam_1/Initializer/zeros:0
�
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam:0<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Assign<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/read:02Irnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros:0
�
9rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1:0>rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Assign>rnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/read:02Krnn/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros:0
�
5rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam:0:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Assign:rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/read:02Grnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros:0
�
7rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1:0<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Assign<rnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/read:02Irnn/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros:0
d
softmax_w/Adam:0softmax_w/Adam/Assignsoftmax_w/Adam/read:02"softmax_w/Adam/Initializer/zeros:0
l
softmax_w/Adam_1:0softmax_w/Adam_1/Assignsoftmax_w/Adam_1/read:02$softmax_w/Adam_1/Initializer/zeros:0
d
softmax_b/Adam:0softmax_b/Adam/Assignsoftmax_b/Adam/read:02"softmax_b/Adam/Initializer/zeros:0
l
softmax_b/Adam_1:0softmax_b/Adam_1/Assignsoftmax_b/Adam_1/read:02$softmax_b/Adam_1/Initializer/zeros:0k�)+2       $V�	�MR���A*'

learning_rate_1o;

loss_1�wA�� 4       ^3\	F�R���A*'

learning_rate_1o;

loss_1�kA�]�4       ^3\	�xR���A*'

learning_rate_1o;

loss_1�SA��'l4       ^3\	��"R���A*'

learning_rate_1o;

loss_1�)Aj�44       ^3\	b)R���A*'

learning_rate_1o;

loss_1��
A�	>U4       ^3\	{�0R���A*'

learning_rate_1o;

loss_1o�	AVP�44       ^3\	�8R���A*'

learning_rate_1o;

loss_1�<Aa�`4       ^3\	~@R���A*'

learning_rate_1o;

loss_1��AJ���4       ^3\	��HR���A*'

learning_rate_1o;

loss_1�]�@��L4       ^3\	@�PR���A	*'

learning_rate_1o;

loss_1��@��A�4       ^3\	�XR���A
*'

learning_rate_1o;

loss_1�{�@dFڊ4       ^3\	��`R���A*'

learning_rate_1o;

loss_1F6�@���4       ^3\	�XiR���A*'

learning_rate_1o;

loss_1)z�@q�r�4       ^3\	1UqR���A*'

learning_rate_1o;

loss_1��@���4       ^3\	�yR���A*'

learning_rate_1o;

loss_1���@.��P4       ^3\	o��R���A*'

learning_rate_1o;

loss_1��@k;��4       ^3\	��R���A*'

learning_rate_1o;

loss_1&�@�K�4       ^3\	��R���A*'

learning_rate_1o;

loss_1�"�@�:3&4       ^3\	�D�R���A*'

learning_rate_1o;

loss_1���@ֻ�4       ^3\	b`�R���A*'

learning_rate_1o;

loss_1'��@�P�4       ^3\	�ЪR���A*'

learning_rate_1o;

loss_10�@���4       ^3\	�:�R���A*'

learning_rate_1o;

loss_1o��@MS%�4       ^3\	t�R���A*'

learning_rate_1o;

loss_1 �@Ҫ{(4       ^3\	��R���A*'

learning_rate_1o;

loss_1{��@��`R4       ^3\	���R���A*'

learning_rate_1o;

loss_1���@'4       ^3\	V��R���A*'

learning_rate_1o;

loss_1)��@?�T4       ^3\	#��R���A*'

learning_rate_1o;

loss_1��@{�4       ^3\	��R���A*'

learning_rate_1o;

loss_1o�@`���4       ^3\	:4�R���A*'

learning_rate_1o;

loss_1���@zU��4       ^3\	��R���A*'

learning_rate_1o;

loss_1Jz�@���4       ^3\	��R���A*'

learning_rate_1o;

loss_1Tv�@�*V14       ^3\	�?S���A*'

learning_rate_1o;

loss_1���@(x��4       ^3\	i1S���A *'

learning_rate_1o;

loss_1`S�@F��4       ^3\	[:S���A!*'

learning_rate_1o;

loss_1���@���4       ^3\	:US���A"*'

learning_rate_1o;

loss_1
)�@m�'4       ^3\	�6$S���A#*'

learning_rate_1o;

loss_1��@�ь�4       ^3\	2,S���A$*'

learning_rate_1o;

loss_1�v�@�4       ^3\	k5S���A%*'

learning_rate_1o;

loss_1�3�@j�]I4       ^3\	��<S���A&*'

learning_rate_1o;

loss_1���@�8F4       ^3\	!�DS���A'*'

learning_rate_1o;

loss_1	��@��lz4       ^3\	��LS���A(*'

learning_rate_1o;

loss_1w��@���4       ^3\	�US���A)*'

learning_rate_1o;

loss_1qs�@u�4       ^3\	t�\S���A**'

learning_rate_1o;

loss_1��@���E4       ^3\	�$fS���A+*'

learning_rate_1o;

loss_1��@J<!34       ^3\	�8oS���A,*'

learning_rate_1o;

loss_1�W�@�0K�4       ^3\	y�yS���A-*'

learning_rate_1o;

loss_1���@���4       ^3\	6�S���A.*'

learning_rate_1o;

loss_1 ��@��4       ^3\	�0�S���A/*'

learning_rate_1o;

loss_1�m�@��z74       ^3\	В�S���A0*'

learning_rate_1o;

loss_1���@si�4       ^3\	��S���A1*'

learning_rate_1o;

loss_1��@� �4       ^3\	���S���A2*'

learning_rate_1o;

loss_1�4�@>(�4       ^3\	-�S���A3*'

learning_rate_1o;

loss_1/��@�b�4       ^3\	���S���A4*'

learning_rate_1o;

loss_1V�@qa��4       ^3\	���S���A5*'

learning_rate_1o;

loss_15j�@ܕM4       ^3\	�J�S���A6*'

learning_rate_1o;

loss_1�"�@%�!�4       ^3\	D��S���A7*'

learning_rate_1o;

loss_1u��@R:��4       ^3\	��S���A8*'

learning_rate_1o;

loss_1���@�P��4       ^3\	 u�S���A9*'

learning_rate_1o;

loss_1xG�@چ�t4       ^3\	���S���A:*'

learning_rate_1o;

loss_1�$�@o ��4       ^3\	��	T���A;*'

learning_rate_1o;

loss_1Hp�@0p3�4       ^3\	�"T���A<*'

learning_rate_1o;

loss_1|��@U_�4       ^3\	ΰT���A=*'

learning_rate_1o;

loss_1���@H��4       ^3\	�b)T���A>*'

learning_rate_1o;

loss_1�@!ֈH