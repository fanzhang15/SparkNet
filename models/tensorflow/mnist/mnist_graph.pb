
L
dataPlaceholder"/device:GPU:0*
dtype0*
shape:@
A
labelPlaceholder"/device:GPU:0*
dtype0	*
shape:@
b
truncated_normal/shapeConst"/device:GPU:0*
dtype0*%
valueB"             
Q
truncated_normal/meanConst"/device:GPU:0*
dtype0*
valueB
 *    
S
truncated_normal/stddevConst"/device:GPU:0*
dtype0*
valueB
 *���=
�
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape"/device:GPU:0*
dtype0*
seed2��*
seed���)*
T0
n
truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev"/device:GPU:0*
T0
\
truncated_normalAddtruncated_normal/multruncated_normal/mean"/device:GPU:0*
T0
n
conv1Variable"/device:GPU:0*
dtype0*
shape: *
	container *
shared_name 
p
conv1/AssignAssignconv1truncated_normal"/device:GPU:0*
validate_shape(*
use_locking(*
T0
5

conv1/readIdentityconv1"/device:GPU:0*
T0
E
zerosConst"/device:GPU:0*
dtype0*
valueB *    
e
VariableVariable"/device:GPU:0*
dtype0*
shape: *
	container *
shared_name 
k
Variable/AssignAssignVariablezeros"/device:GPU:0*
validate_shape(*
use_locking(*
T0
;
Variable/readIdentityVariable"/device:GPU:0*
T0
d
truncated_normal_1/shapeConst"/device:GPU:0*
dtype0*%
valueB"          @   
S
truncated_normal_1/meanConst"/device:GPU:0*
dtype0*
valueB
 *    
U
truncated_normal_1/stddevConst"/device:GPU:0*
dtype0*
valueB
 *���=
�
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape"/device:GPU:0*
dtype0*
seed2��*
seed���)*
T0
t
truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev"/device:GPU:0*
T0
b
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean"/device:GPU:0*
T0
s

Variable_1Variable"/device:GPU:0*
dtype0*
shape: @*
	container *
shared_name 
|
Variable_1/AssignAssign
Variable_1truncated_normal_1"/device:GPU:0*
validate_shape(*
use_locking(*
T0
?
Variable_1/readIdentity
Variable_1"/device:GPU:0*
T0
E
ConstConst"/device:GPU:0*
dtype0*
valueB@*���=
g

Variable_2Variable"/device:GPU:0*
dtype0*
shape:@*
	container *
shared_name 
o
Variable_2/AssignAssign
Variable_2Const"/device:GPU:0*
validate_shape(*
use_locking(*
T0
?
Variable_2/readIdentity
Variable_2"/device:GPU:0*
T0
\
truncated_normal_2/shapeConst"/device:GPU:0*
dtype0*
valueB"@     
S
truncated_normal_2/meanConst"/device:GPU:0*
dtype0*
valueB
 *    
U
truncated_normal_2/stddevConst"/device:GPU:0*
dtype0*
valueB
 *���=
�
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape"/device:GPU:0*
dtype0*
seed2��*
seed���)*
T0
t
truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev"/device:GPU:0*
T0
b
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean"/device:GPU:0*
T0
m

Variable_3Variable"/device:GPU:0*
dtype0*
shape:
��*
	container *
shared_name 
|
Variable_3/AssignAssign
Variable_3truncated_normal_2"/device:GPU:0*
validate_shape(*
use_locking(*
T0
?
Variable_3/readIdentity
Variable_3"/device:GPU:0*
T0
H
Const_1Const"/device:GPU:0*
dtype0*
valueB�*���=
h

Variable_4Variable"/device:GPU:0*
dtype0*
shape:�*
	container *
shared_name 
q
Variable_4/AssignAssign
Variable_4Const_1"/device:GPU:0*
validate_shape(*
use_locking(*
T0
?
Variable_4/readIdentity
Variable_4"/device:GPU:0*
T0
\
truncated_normal_3/shapeConst"/device:GPU:0*
dtype0*
valueB"   
   
S
truncated_normal_3/meanConst"/device:GPU:0*
dtype0*
valueB
 *    
U
truncated_normal_3/stddevConst"/device:GPU:0*
dtype0*
valueB
 *���=
�
"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape"/device:GPU:0*
dtype0*
seed2��*
seed���)*
T0
t
truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev"/device:GPU:0*
T0
b
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean"/device:GPU:0*
T0
l

Variable_5Variable"/device:GPU:0*
dtype0*
shape:	�
*
	container *
shared_name 
|
Variable_5/AssignAssign
Variable_5truncated_normal_3"/device:GPU:0*
validate_shape(*
use_locking(*
T0
?
Variable_5/readIdentity
Variable_5"/device:GPU:0*
T0
G
Const_2Const"/device:GPU:0*
dtype0*
valueB
*���=
g

Variable_6Variable"/device:GPU:0*
dtype0*
shape:
*
	container *
shared_name 
q
Variable_6/AssignAssign
Variable_6Const_2"/device:GPU:0*
validate_shape(*
use_locking(*
T0
?
Variable_6/readIdentity
Variable_6"/device:GPU:0*
T0
z
Conv2DConv2Ddata
conv1/read"/device:GPU:0*
paddingSAME*
strides
*
T0*
use_cudnn_on_gpu(
A
BiasAddBiasAddConv2DVariable/read"/device:GPU:0*
T0
-
ReluReluBiasAdd"/device:GPU:0*
T0
b
MaxPoolMaxPoolRelu"/device:GPU:0*
paddingSAME*
strides
*
ksize

�
Conv2D_1Conv2DMaxPoolVariable_1/read"/device:GPU:0*
paddingSAME*
strides
*
T0*
use_cudnn_on_gpu(
G
	BiasAdd_1BiasAddConv2D_1Variable_2/read"/device:GPU:0*
T0
1
Relu_1Relu	BiasAdd_1"/device:GPU:0*
T0
f
	MaxPool_1MaxPoolRelu_1"/device:GPU:0*
paddingSAME*
strides
*
ksize

Q
Reshape/shapeConst"/device:GPU:0*
dtype0*
valueB"@   @  
D
ReshapeReshape	MaxPool_1Reshape/shape"/device:GPU:0*
T0
h
MatMulMatMulReshapeVariable_3/read"/device:GPU:0*
transpose_b( *
transpose_a( *
T0
;
addAddMatMulVariable_4/read"/device:GPU:0*
T0
+
Relu_2Reluadd"/device:GPU:0*
T0
i
MatMul_1MatMulRelu_2Variable_5/read"/device:GPU:0*
transpose_b( *
transpose_a( *
T0
?
add_1AddMatMul_1Variable_6/read"/device:GPU:0*
T0
p
#SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_1label"/device:GPU:0*
T0
I
RankRank#SparseSoftmaxCrossEntropyWithLogits"/device:GPU:0*
T0
D
range/startConst"/device:GPU:0*
dtype0*
value	B : 
D
range/deltaConst"/device:GPU:0*
dtype0*
value	B :
=
rangeRangerange/startRankrange/delta"/device:GPU:0
a
MeanMean#SparseSoftmaxCrossEntropyWithLogitsrange"/device:GPU:0*
T0*
	keep_dims( 
9
L2LossL2LossVariable_3/read"/device:GPU:0*
T0
;
L2Loss_1L2LossVariable_4/read"/device:GPU:0*
T0
6
add_2AddL2LossL2Loss_1"/device:GPU:0*
T0
;
L2Loss_2L2LossVariable_5/read"/device:GPU:0*
T0
5
add_3Addadd_2L2Loss_2"/device:GPU:0*
T0
;
L2Loss_3L2LossVariable_6/read"/device:GPU:0*
T0
5
add_4Addadd_3L2Loss_3"/device:GPU:0*
T0
A
mul/xConst"/device:GPU:0*
dtype0*
valueB
 *o:
0
mulMulmul/xadd_4"/device:GPU:0*
T0
.
lossAddMeanmul"/device:GPU:0*
T0
Q
Variable_7/initial_valueConst"/device:GPU:0*
dtype0*
value	B : 
c

Variable_7Variable"/device:GPU:0*
dtype0*
shape: *
	container *
shared_name 
�
Variable_7/AssignAssign
Variable_7Variable_7/initial_value"/device:GPU:0*
validate_shape(*
use_locking(*
T0
?
Variable_7/readIdentity
Variable_7"/device:GPU:0*
T0
@
mul_1/yConst"/device:GPU:0*
dtype0*
value	B :@
>
mul_1MulVariable_7/readmul_1/y"/device:GPU:0*
T0
Z
ExponentialDecay/learning_rateConst"/device:GPU:0*
dtype0*
valueB
 *
�#<
K
ExponentialDecay/CastCastmul_1"/device:GPU:0*

DstT0*

SrcT0
T
ExponentialDecay/Cast_1/xConst"/device:GPU:0*
dtype0*
valueB	 :��
a
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x"/device:GPU:0*

DstT0*

SrcT0
U
ExponentialDecay/Cast_2/xConst"/device:GPU:0*
dtype0*
valueB
 *33s?
g
ExponentialDecay/truedivDivExponentialDecay/CastExponentialDecay/Cast_1"/device:GPU:0*
T0
Q
ExponentialDecay/FloorFloorExponentialDecay/truediv"/device:GPU:0*
T0
f
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor"/device:GPU:0*
T0
e
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow"/device:GPU:0*
T0
6
gradients/ShapeShapeloss"/device:GPU:0*
T0
K
gradients/ConstConst"/device:GPU:0*
dtype0*
valueB
 *  �?
P
gradients/FillFillgradients/Shapegradients/Const"/device:GPU:0*
T0
@
gradients/loss_grad/ShapeShapeMean"/device:GPU:0*
T0
A
gradients/loss_grad/Shape_1Shapemul"/device:GPU:0*
T0
�
)gradients/loss_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/loss_grad/Shapegradients/loss_grad/Shape_1"/device:GPU:0
�
gradients/loss_grad/SumSumgradients/Fill)gradients/loss_grad/BroadcastGradientArgs"/device:GPU:0*
T0*
	keep_dims( 
r
gradients/loss_grad/ReshapeReshapegradients/loss_grad/Sumgradients/loss_grad/Shape"/device:GPU:0*
T0
�
gradients/loss_grad/Sum_1Sumgradients/Fill+gradients/loss_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*
	keep_dims( 
x
gradients/loss_grad/Reshape_1Reshapegradients/loss_grad/Sum_1gradients/loss_grad/Shape_1"/device:GPU:0*
T0
y
$gradients/loss_grad/tuple/group_depsNoOp^gradients/loss_grad/Reshape^gradients/loss_grad/Reshape_1"/device:GPU:0
�
,gradients/loss_grad/tuple/control_dependencyIdentitygradients/loss_grad/Reshape%^gradients/loss_grad/tuple/group_deps"/device:GPU:0*
T0
�
.gradients/loss_grad/tuple/control_dependency_1Identitygradients/loss_grad/Reshape_1%^gradients/loss_grad/tuple/group_deps"/device:GPU:0*
T0
_
gradients/Mean_grad/ShapeShape#SparseSoftmaxCrossEntropyWithLogits"/device:GPU:0*
T0
]
gradients/Mean_grad/RankRank#SparseSoftmaxCrossEntropyWithLogits"/device:GPU:0*
T0
C
gradients/Mean_grad/Shape_1Shaperange"/device:GPU:0*
T0
X
gradients/Mean_grad/range/startConst"/device:GPU:0*
dtype0*
value	B : 
X
gradients/Mean_grad/range/deltaConst"/device:GPU:0*
dtype0*
value	B :
�
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Rankgradients/Mean_grad/range/delta"/device:GPU:0
W
gradients/Mean_grad/Fill/valueConst"/device:GPU:0*
dtype0*
value	B :
u
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value"/device:GPU:0*
T0
�
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangerangegradients/Mean_grad/Shapegradients/Mean_grad/Fill"/device:GPU:0*
T0*
N
y
gradients/Mean_grad/floordivDivgradients/Mean_grad/Shape!gradients/Mean_grad/DynamicStitch"/device:GPU:0*
T0
�
gradients/Mean_grad/ReshapeReshape,gradients/loss_grad/tuple/control_dependency!gradients/Mean_grad/DynamicStitch"/device:GPU:0*
T0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv"/device:GPU:0*
T0
a
gradients/Mean_grad/Shape_2Shape#SparseSoftmaxCrossEntropyWithLogits"/device:GPU:0*
T0
B
gradients/Mean_grad/Shape_3ShapeMean"/device:GPU:0*
T0
W
gradients/Mean_grad/Rank_1Rankgradients/Mean_grad/Shape_2"/device:GPU:0*
T0
Z
!gradients/Mean_grad/range_1/startConst"/device:GPU:0*
dtype0*
value	B : 
Z
!gradients/Mean_grad/range_1/deltaConst"/device:GPU:0*
dtype0*
value	B :
�
gradients/Mean_grad/range_1Range!gradients/Mean_grad/range_1/startgradients/Mean_grad/Rank_1!gradients/Mean_grad/range_1/delta"/device:GPU:0
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/range_1"/device:GPU:0*
T0*
	keep_dims( 
W
gradients/Mean_grad/Rank_2Rankgradients/Mean_grad/Shape_3"/device:GPU:0*
T0
Z
!gradients/Mean_grad/range_2/startConst"/device:GPU:0*
dtype0*
value	B : 
Z
!gradients/Mean_grad/range_2/deltaConst"/device:GPU:0*
dtype0*
value	B :
�
gradients/Mean_grad/range_2Range!gradients/Mean_grad/range_2/startgradients/Mean_grad/Rank_2!gradients/Mean_grad/range_2/delta"/device:GPU:0
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/range_2"/device:GPU:0*
T0*
	keep_dims( 
s
gradients/Mean_grad/floordiv_1Divgradients/Mean_grad/Prodgradients/Mean_grad/Prod_1"/device:GPU:0*
T0
g
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1"/device:GPU:0*

DstT0*

SrcT0
n
gradients/Mean_grad/truedivDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast"/device:GPU:0*
T0
@
gradients/mul_grad/ShapeShapemul/x"/device:GPU:0*
T0
B
gradients/mul_grad/Shape_1Shapeadd_4"/device:GPU:0*
T0
�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1"/device:GPU:0
l
gradients/mul_grad/mulMul.gradients/loss_grad/tuple/control_dependency_1add_4"/device:GPU:0*
T0
�
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs"/device:GPU:0*
T0*
	keep_dims( 
o
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape"/device:GPU:0*
T0
n
gradients/mul_grad/mul_1Mulmul/x.gradients/loss_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*
	keep_dims( 
u
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1"/device:GPU:0*
T0
v
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1"/device:GPU:0
�
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps"/device:GPU:0*
T0
�
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps"/device:GPU:0*
T0
B
gradients/add_4_grad/ShapeShapeadd_3"/device:GPU:0*
T0
G
gradients/add_4_grad/Shape_1ShapeL2Loss_3"/device:GPU:0*
T0
�
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1"/device:GPU:0
�
gradients/add_4_grad/SumSum-gradients/mul_grad/tuple/control_dependency_1*gradients/add_4_grad/BroadcastGradientArgs"/device:GPU:0*
T0*
	keep_dims( 
u
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape"/device:GPU:0*
T0
�
gradients/add_4_grad/Sum_1Sum-gradients/mul_grad/tuple/control_dependency_1,gradients/add_4_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*
	keep_dims( 
{
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1"/device:GPU:0*
T0
|
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1"/device:GPU:0
�
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps"/device:GPU:0*
T0
�
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps"/device:GPU:0*
T0
B
gradients/add_3_grad/ShapeShapeadd_2"/device:GPU:0*
T0
G
gradients/add_3_grad/Shape_1ShapeL2Loss_2"/device:GPU:0*
T0
�
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1"/device:GPU:0
�
gradients/add_3_grad/SumSum-gradients/add_4_grad/tuple/control_dependency*gradients/add_3_grad/BroadcastGradientArgs"/device:GPU:0*
T0*
	keep_dims( 
u
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape"/device:GPU:0*
T0
�
gradients/add_3_grad/Sum_1Sum-gradients/add_4_grad/tuple/control_dependency,gradients/add_3_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*
	keep_dims( 
{
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1"/device:GPU:0*
T0
|
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1"/device:GPU:0
�
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps"/device:GPU:0*
T0
�
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps"/device:GPU:0*
T0
|
gradients/L2Loss_3_grad/mulMulVariable_6/read/gradients/add_4_grad/tuple/control_dependency_1"/device:GPU:0*
T0
j
gradients/zeros_like/ZerosLike	ZerosLike%SparseSoftmaxCrossEntropyWithLogits:1"/device:GPU:0*
T0
�
Agradients/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst"/device:GPU:0*
dtype0*
valueB :
���������
�
=gradients/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivAgradients/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim"/device:GPU:0*
T0
�
6gradients/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul=gradients/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims%SparseSoftmaxCrossEntropyWithLogits:1"/device:GPU:0*
T0
C
gradients/add_2_grad/ShapeShapeL2Loss"/device:GPU:0*
T0
G
gradients/add_2_grad/Shape_1ShapeL2Loss_1"/device:GPU:0*
T0
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1"/device:GPU:0
�
gradients/add_2_grad/SumSum-gradients/add_3_grad/tuple/control_dependency*gradients/add_2_grad/BroadcastGradientArgs"/device:GPU:0*
T0*
	keep_dims( 
u
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape"/device:GPU:0*
T0
�
gradients/add_2_grad/Sum_1Sum-gradients/add_3_grad/tuple/control_dependency,gradients/add_2_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*
	keep_dims( 
{
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1"/device:GPU:0*
T0
|
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1"/device:GPU:0
�
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps"/device:GPU:0*
T0
�
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps"/device:GPU:0*
T0
|
gradients/L2Loss_2_grad/mulMulVariable_5/read/gradients/add_3_grad/tuple/control_dependency_1"/device:GPU:0*
T0
E
gradients/add_1_grad/ShapeShapeMatMul_1"/device:GPU:0*
T0
N
gradients/add_1_grad/Shape_1ShapeVariable_6/read"/device:GPU:0*
T0
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1"/device:GPU:0
�
gradients/add_1_grad/SumSum6gradients/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_1_grad/BroadcastGradientArgs"/device:GPU:0*
T0*
	keep_dims( 
u
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape"/device:GPU:0*
T0
�
gradients/add_1_grad/Sum_1Sum6gradients/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*
	keep_dims( 
{
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1"/device:GPU:0*
T0
|
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1"/device:GPU:0
�
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps"/device:GPU:0*
T0
�
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps"/device:GPU:0*
T0
x
gradients/L2Loss_grad/mulMulVariable_3/read-gradients/add_2_grad/tuple/control_dependency"/device:GPU:0*
T0
|
gradients/L2Loss_1_grad/mulMulVariable_4/read/gradients/add_2_grad/tuple/control_dependency_1"/device:GPU:0*
T0
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyVariable_5/read"/device:GPU:0*
transpose_b(*
transpose_a( *
T0
�
 gradients/MatMul_1_grad/MatMul_1MatMulRelu_2-gradients/add_1_grad/tuple/control_dependency"/device:GPU:0*
transpose_b( *
transpose_a(*
T0
�
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1"/device:GPU:0
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps"/device:GPU:0*
T0
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps"/device:GPU:0*
T0
�
gradients/AddNAddNgradients/L2Loss_3_grad/mul/gradients/add_1_grad/tuple/control_dependency_1"/device:GPU:0*
T0*
N
|
gradients/Relu_2_grad/ReluGradReluGrad0gradients/MatMul_1_grad/tuple/control_dependencyRelu_2"/device:GPU:0*
T0
�
gradients/AddN_1AddNgradients/L2Loss_2_grad/mul2gradients/MatMul_1_grad/tuple/control_dependency_1"/device:GPU:0*
T0*
N
A
gradients/add_grad/ShapeShapeMatMul"/device:GPU:0*
T0
L
gradients/add_grad/Shape_1ShapeVariable_4/read"/device:GPU:0*
T0
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1"/device:GPU:0
�
gradients/add_grad/SumSumgradients/Relu_2_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs"/device:GPU:0*
T0*
	keep_dims( 
o
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape"/device:GPU:0*
T0
�
gradients/add_grad/Sum_1Sumgradients/Relu_2_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1"/device:GPU:0*
T0*
	keep_dims( 
u
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1"/device:GPU:0*
T0
v
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1"/device:GPU:0
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps"/device:GPU:0*
T0
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps"/device:GPU:0*
T0
�
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable_3/read"/device:GPU:0*
transpose_b(*
transpose_a( *
T0
�
gradients/MatMul_grad/MatMul_1MatMulReshape+gradients/add_grad/tuple/control_dependency"/device:GPU:0*
transpose_b( *
transpose_a(*
T0
}
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1"/device:GPU:0
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps"/device:GPU:0*
T0
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps"/device:GPU:0*
T0
�
gradients/AddN_2AddNgradients/L2Loss_1_grad/mul-gradients/add_grad/tuple/control_dependency_1"/device:GPU:0*
T0*
N
H
gradients/Reshape_grad/ShapeShape	MaxPool_1"/device:GPU:0*
T0
�
gradients/Reshape_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape"/device:GPU:0*
T0
�
gradients/AddN_3AddNgradients/L2Loss_grad/mul0gradients/MatMul_grad/tuple/control_dependency_1"/device:GPU:0*
T0*
N
�
$gradients/MaxPool_1_grad/MaxPoolGradMaxPoolGradRelu_1	MaxPool_1gradients/Reshape_grad/Reshape"/device:GPU:0*
paddingSAME*
strides
*
ksize

p
gradients/Relu_1_grad/ReluGradReluGrad$gradients/MaxPool_1_grad/MaxPoolGradRelu_1"/device:GPU:0*
T0
]
gradients/BiasAdd_1_grad/RankRankgradients/Relu_1_grad/ReluGrad"/device:GPU:0*
T0
W
gradients/BiasAdd_1_grad/sub/yConst"/device:GPU:0*
dtype0*
value	B :
z
gradients/BiasAdd_1_grad/subSubgradients/BiasAdd_1_grad/Rankgradients/BiasAdd_1_grad/sub/y"/device:GPU:0*
T0
]
$gradients/BiasAdd_1_grad/range/startConst"/device:GPU:0*
dtype0*
value	B : 
]
$gradients/BiasAdd_1_grad/range/deltaConst"/device:GPU:0*
dtype0*
value	B :
�
gradients/BiasAdd_1_grad/rangeRange$gradients/BiasAdd_1_grad/range/startgradients/BiasAdd_1_grad/sub$gradients/BiasAdd_1_grad/range/delta"/device:GPU:0
�
gradients/BiasAdd_1_grad/SumSumgradients/Relu_1_grad/ReluGradgradients/BiasAdd_1_grad/range"/device:GPU:0*
T0*
	keep_dims( 
�
)gradients/BiasAdd_1_grad/tuple/group_depsNoOp^gradients/Relu_1_grad/ReluGrad^gradients/BiasAdd_1_grad/Sum"/device:GPU:0
�
1gradients/BiasAdd_1_grad/tuple/control_dependencyIdentitygradients/Relu_1_grad/ReluGrad*^gradients/BiasAdd_1_grad/tuple/group_deps"/device:GPU:0*
T0
�
3gradients/BiasAdd_1_grad/tuple/control_dependency_1Identitygradients/BiasAdd_1_grad/Sum*^gradients/BiasAdd_1_grad/tuple/group_deps"/device:GPU:0*
T0
G
gradients/Conv2D_1_grad/ShapeShapeMaxPool"/device:GPU:0*
T0
�
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeVariable_1/read1gradients/BiasAdd_1_grad/tuple/control_dependency"/device:GPU:0*
paddingSAME*
strides
*
T0*
use_cudnn_on_gpu(
Q
gradients/Conv2D_1_grad/Shape_1ShapeVariable_1/read"/device:GPU:0*
T0
�
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPoolgradients/Conv2D_1_grad/Shape_11gradients/BiasAdd_1_grad/tuple/control_dependency"/device:GPU:0*
paddingSAME*
strides
*
T0*
use_cudnn_on_gpu(
�
(gradients/Conv2D_1_grad/tuple/group_depsNoOp,^gradients/Conv2D_1_grad/Conv2DBackpropInput-^gradients/Conv2D_1_grad/Conv2DBackpropFilter"/device:GPU:0
�
0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps"/device:GPU:0*
T0
�
2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps"/device:GPU:0*
T0
�
"gradients/MaxPool_grad/MaxPoolGradMaxPoolGradReluMaxPool0gradients/Conv2D_1_grad/tuple/control_dependency"/device:GPU:0*
paddingSAME*
strides
*
ksize

j
gradients/Relu_grad/ReluGradReluGrad"gradients/MaxPool_grad/MaxPoolGradRelu"/device:GPU:0*
T0
Y
gradients/BiasAdd_grad/RankRankgradients/Relu_grad/ReluGrad"/device:GPU:0*
T0
U
gradients/BiasAdd_grad/sub/yConst"/device:GPU:0*
dtype0*
value	B :
t
gradients/BiasAdd_grad/subSubgradients/BiasAdd_grad/Rankgradients/BiasAdd_grad/sub/y"/device:GPU:0*
T0
[
"gradients/BiasAdd_grad/range/startConst"/device:GPU:0*
dtype0*
value	B : 
[
"gradients/BiasAdd_grad/range/deltaConst"/device:GPU:0*
dtype0*
value	B :
�
gradients/BiasAdd_grad/rangeRange"gradients/BiasAdd_grad/range/startgradients/BiasAdd_grad/sub"gradients/BiasAdd_grad/range/delta"/device:GPU:0
�
gradients/BiasAdd_grad/SumSumgradients/Relu_grad/ReluGradgradients/BiasAdd_grad/range"/device:GPU:0*
T0*
	keep_dims( 
z
'gradients/BiasAdd_grad/tuple/group_depsNoOp^gradients/Relu_grad/ReluGrad^gradients/BiasAdd_grad/Sum"/device:GPU:0
�
/gradients/BiasAdd_grad/tuple/control_dependencyIdentitygradients/Relu_grad/ReluGrad(^gradients/BiasAdd_grad/tuple/group_deps"/device:GPU:0*
T0
�
1gradients/BiasAdd_grad/tuple/control_dependency_1Identitygradients/BiasAdd_grad/Sum(^gradients/BiasAdd_grad/tuple/group_deps"/device:GPU:0*
T0
B
gradients/Conv2D_grad/ShapeShapedata"/device:GPU:0*
T0
�
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/Shape
conv1/read/gradients/BiasAdd_grad/tuple/control_dependency"/device:GPU:0*
paddingSAME*
strides
*
T0*
use_cudnn_on_gpu(
J
gradients/Conv2D_grad/Shape_1Shape
conv1/read"/device:GPU:0*
T0
�
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdatagradients/Conv2D_grad/Shape_1/gradients/BiasAdd_grad/tuple/control_dependency"/device:GPU:0*
paddingSAME*
strides
*
T0*
use_cudnn_on_gpu(
�
&gradients/Conv2D_grad/tuple/group_depsNoOp*^gradients/Conv2D_grad/Conv2DBackpropInput+^gradients/Conv2D_grad/Conv2DBackpropFilter"/device:GPU:0
�
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps"/device:GPU:0*
T0
�
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps"/device:GPU:0*
T0
S
zeros_1Const"/device:GPU:0*
dtype0*%
valueB *    
w
conv1/MomentumVariable"/device:GPU:0*
dtype0*
shape: *
	container *
shared_name 
y
conv1/Momentum/AssignAssignconv1/Momentumzeros_1"/device:GPU:0*
validate_shape(*
use_locking(*
T0
G
conv1/Momentum/readIdentityconv1/Momentum"/device:GPU:0*
T0
G
zeros_2Const"/device:GPU:0*
dtype0*
valueB *    
n
Variable/MomentumVariable"/device:GPU:0*
dtype0*
shape: *
	container *
shared_name 

Variable/Momentum/AssignAssignVariable/Momentumzeros_2"/device:GPU:0*
validate_shape(*
use_locking(*
T0
M
Variable/Momentum/readIdentityVariable/Momentum"/device:GPU:0*
T0
S
zeros_3Const"/device:GPU:0*
dtype0*%
valueB @*    
|
Variable_1/MomentumVariable"/device:GPU:0*
dtype0*
shape: @*
	container *
shared_name 
�
Variable_1/Momentum/AssignAssignVariable_1/Momentumzeros_3"/device:GPU:0*
validate_shape(*
use_locking(*
T0
Q
Variable_1/Momentum/readIdentityVariable_1/Momentum"/device:GPU:0*
T0
G
zeros_4Const"/device:GPU:0*
dtype0*
valueB@*    
p
Variable_2/MomentumVariable"/device:GPU:0*
dtype0*
shape:@*
	container *
shared_name 
�
Variable_2/Momentum/AssignAssignVariable_2/Momentumzeros_4"/device:GPU:0*
validate_shape(*
use_locking(*
T0
Q
Variable_2/Momentum/readIdentityVariable_2/Momentum"/device:GPU:0*
T0
M
zeros_5Const"/device:GPU:0*
dtype0*
valueB
��*    
v
Variable_3/MomentumVariable"/device:GPU:0*
dtype0*
shape:
��*
	container *
shared_name 
�
Variable_3/Momentum/AssignAssignVariable_3/Momentumzeros_5"/device:GPU:0*
validate_shape(*
use_locking(*
T0
Q
Variable_3/Momentum/readIdentityVariable_3/Momentum"/device:GPU:0*
T0
H
zeros_6Const"/device:GPU:0*
dtype0*
valueB�*    
q
Variable_4/MomentumVariable"/device:GPU:0*
dtype0*
shape:�*
	container *
shared_name 
�
Variable_4/Momentum/AssignAssignVariable_4/Momentumzeros_6"/device:GPU:0*
validate_shape(*
use_locking(*
T0
Q
Variable_4/Momentum/readIdentityVariable_4/Momentum"/device:GPU:0*
T0
L
zeros_7Const"/device:GPU:0*
dtype0*
valueB	�
*    
u
Variable_5/MomentumVariable"/device:GPU:0*
dtype0*
shape:	�
*
	container *
shared_name 
�
Variable_5/Momentum/AssignAssignVariable_5/Momentumzeros_7"/device:GPU:0*
validate_shape(*
use_locking(*
T0
Q
Variable_5/Momentum/readIdentityVariable_5/Momentum"/device:GPU:0*
T0
G
zeros_8Const"/device:GPU:0*
dtype0*
valueB
*    
p
Variable_6/MomentumVariable"/device:GPU:0*
dtype0*
shape:
*
	container *
shared_name 
�
Variable_6/Momentum/AssignAssignVariable_6/Momentumzeros_8"/device:GPU:0*
validate_shape(*
use_locking(*
T0
Q
Variable_6/Momentum/readIdentityVariable_6/Momentum"/device:GPU:0*
T0
P
train//step/momentumConst"/device:GPU:0*
dtype0*
valueB
 *fff?
�
&train//step/update_conv1/ApplyMomentumApplyMomentumconv1conv1/MomentumExponentialDecay0gradients/Conv2D_grad/tuple/control_dependency_1train//step/momentum"/device:GPU:0*
use_locking( *
T0
�
)train//step/update_Variable/ApplyMomentumApplyMomentumVariableVariable/MomentumExponentialDecay1gradients/BiasAdd_grad/tuple/control_dependency_1train//step/momentum"/device:GPU:0*
use_locking( *
T0
�
+train//step/update_Variable_1/ApplyMomentumApplyMomentum
Variable_1Variable_1/MomentumExponentialDecay2gradients/Conv2D_1_grad/tuple/control_dependency_1train//step/momentum"/device:GPU:0*
use_locking( *
T0
�
+train//step/update_Variable_2/ApplyMomentumApplyMomentum
Variable_2Variable_2/MomentumExponentialDecay3gradients/BiasAdd_1_grad/tuple/control_dependency_1train//step/momentum"/device:GPU:0*
use_locking( *
T0
�
+train//step/update_Variable_3/ApplyMomentumApplyMomentum
Variable_3Variable_3/MomentumExponentialDecaygradients/AddN_3train//step/momentum"/device:GPU:0*
use_locking( *
T0
�
+train//step/update_Variable_4/ApplyMomentumApplyMomentum
Variable_4Variable_4/MomentumExponentialDecaygradients/AddN_2train//step/momentum"/device:GPU:0*
use_locking( *
T0
�
+train//step/update_Variable_5/ApplyMomentumApplyMomentum
Variable_5Variable_5/MomentumExponentialDecaygradients/AddN_1train//step/momentum"/device:GPU:0*
use_locking( *
T0
�
+train//step/update_Variable_6/ApplyMomentumApplyMomentum
Variable_6Variable_6/MomentumExponentialDecaygradients/AddNtrain//step/momentum"/device:GPU:0*
use_locking( *
T0
�
train//step/updateNoOp'^train//step/update_conv1/ApplyMomentum*^train//step/update_Variable/ApplyMomentum,^train//step/update_Variable_1/ApplyMomentum,^train//step/update_Variable_2/ApplyMomentum,^train//step/update_Variable_3/ApplyMomentum,^train//step/update_Variable_4/ApplyMomentum,^train//step/update_Variable_5/ApplyMomentum,^train//step/update_Variable_6/ApplyMomentum"/device:GPU:0
_
train//step/valueConst^train//step/update"/device:GPU:0*
dtype0*
value	B :
b
train//step	AssignAdd
Variable_7train//step/value"/device:GPU:0*
use_locking( *
T0
:
train_predictionSoftmaxadd_1"/device:GPU:0*
T0
M
prediction/dimensionConst"/device:GPU:0*
dtype0*
value	B :
T

predictionArgMaxtrain_predictionprediction/dimension"/device:GPU:0*
T0
F
correct_predictionEqual
predictionlabel"/device:GPU:0*
T0	
G
CastCastcorrect_prediction"/device:GPU:0*

DstT0*

SrcT0

,
Rank_1RankCast"/device:GPU:0*
T0
F
range_1/startConst"/device:GPU:0*
dtype0*
value	B : 
F
range_1/deltaConst"/device:GPU:0*
dtype0*
value	B :
E
range_1Rangerange_1/startRank_1range_1/delta"/device:GPU:0
H
accuracyMeanCastrange_1"/device:GPU:0*
T0*
	keep_dims( 
�
init//all_varsNoOp^conv1/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign^conv1/Momentum/Assign^Variable/Momentum/Assign^Variable_1/Momentum/Assign^Variable_2/Momentum/Assign^Variable_3/Momentum/Assign^Variable_4/Momentum/Assign^Variable_5/Momentum/Assign^Variable_6/Momentum/Assign"/device:GPU:0
a
conv1//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape: 
z
conv1//assignAssignconv1conv1//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
X
Variable//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape: 
�
Variable//assignAssignVariableVariable//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
f
Variable_1//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape: @
�
Variable_1//assignAssign
Variable_1Variable_1//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
Z
Variable_2//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape:@
�
Variable_2//assignAssign
Variable_2Variable_2//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
`
Variable_3//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape:
��
�
Variable_3//assignAssign
Variable_3Variable_3//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
[
Variable_4//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape:�
�
Variable_4//assignAssign
Variable_4Variable_4//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
_
Variable_5//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape:	�

�
Variable_5//assignAssign
Variable_5Variable_5//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
Z
Variable_6//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape:

�
Variable_6//assignAssign
Variable_6Variable_6//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
V
Variable_7//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape: 
�
Variable_7//assignAssign
Variable_7Variable_7//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
j
"conv1/Momentum//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape: 
�
conv1/Momentum//assignAssignconv1/Momentum"conv1/Momentum//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
a
%Variable/Momentum//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape: 
�
Variable/Momentum//assignAssignVariable/Momentum%Variable/Momentum//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
o
'Variable_1/Momentum//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape: @
�
Variable_1/Momentum//assignAssignVariable_1/Momentum'Variable_1/Momentum//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
c
'Variable_2/Momentum//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape:@
�
Variable_2/Momentum//assignAssignVariable_2/Momentum'Variable_2/Momentum//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
i
'Variable_3/Momentum//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape:
��
�
Variable_3/Momentum//assignAssignVariable_3/Momentum'Variable_3/Momentum//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
d
'Variable_4/Momentum//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape:�
�
Variable_4/Momentum//assignAssignVariable_4/Momentum'Variable_4/Momentum//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
h
'Variable_5/Momentum//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape:	�

�
Variable_5/Momentum//assignAssignVariable_5/Momentum'Variable_5/Momentum//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0
c
'Variable_6/Momentum//update_placeholderPlaceholder"/device:GPU:0*
dtype0*
shape:

�
Variable_6/Momentum//assignAssignVariable_6/Momentum'Variable_6/Momentum//update_placeholder"/device:GPU:0*
validate_shape(*
use_locking(*
T0"