ðõ*
 $ð#
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
®
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ë'

Adam/rnn/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸**
shared_nameAdam/rnn/lstm_cell/bias/v

-Adam/rnn/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/bias/v*
_output_shapes	
:¸*
dtype0
§
%Adam/rnn/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*6
shared_name'%Adam/rnn/lstm_cell/recurrent_kernel/v
 
9Adam/rnn/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp%Adam/rnn/lstm_cell/recurrent_kernel/v*
_output_shapes
:	.¸*
dtype0

Adam/rnn/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*,
shared_nameAdam/rnn/lstm_cell/kernel/v

/Adam/rnn/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/kernel/v*
_output_shapes
:	2¸*
dtype0
Â
5Adam/transformer_encoder/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*F
shared_name75Adam/transformer_encoder/layer_normalization_1/beta/v
»
IAdam/transformer_encoder/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_encoder/layer_normalization_1/beta/v*
_output_shapes
:2*
dtype0
Ä
6Adam/transformer_encoder/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*G
shared_name86Adam/transformer_encoder/layer_normalization_1/gamma/v
½
JAdam/transformer_encoder/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_encoder/layer_normalization_1/gamma/v*
_output_shapes
:2*
dtype0
¾
3Adam/transformer_encoder/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*D
shared_name53Adam/transformer_encoder/layer_normalization/beta/v
·
GAdam/transformer_encoder/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOp3Adam/transformer_encoder/layer_normalization/beta/v*
_output_shapes
:2*
dtype0
À
4Adam/transformer_encoder/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*E
shared_name64Adam/transformer_encoder/layer_normalization/gamma/v
¹
HAdam/transformer_encoder/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/transformer_encoder/layer_normalization/gamma/v*
_output_shapes
:2*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:2*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

: 2*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
: *
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:2 *
dtype0
â
EAdam/transformer_encoder/multi_head_attention/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*V
shared_nameGEAdam/transformer_encoder/multi_head_attention/attention_output/bias/v
Û
YAdam/transformer_encoder/multi_head_attention/attention_output/bias/v/Read/ReadVariableOpReadVariableOpEAdam/transformer_encoder/multi_head_attention/attention_output/bias/v*
_output_shapes
:2*
dtype0
î
GAdam/transformer_encoder/multi_head_attention/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*X
shared_nameIGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/v
ç
[Adam/transformer_encoder/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/v*"
_output_shapes
:22*
dtype0
Ð
:Adam/transformer_encoder/multi_head_attention/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*K
shared_name<:Adam/transformer_encoder/multi_head_attention/value/bias/v
É
NAdam/transformer_encoder/multi_head_attention/value/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/value/bias/v*
_output_shapes

:2*
dtype0
Ø
<Adam/transformer_encoder/multi_head_attention/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*M
shared_name><Adam/transformer_encoder/multi_head_attention/value/kernel/v
Ñ
PAdam/transformer_encoder/multi_head_attention/value/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder/multi_head_attention/value/kernel/v*"
_output_shapes
:22*
dtype0
Ì
8Adam/transformer_encoder/multi_head_attention/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*I
shared_name:8Adam/transformer_encoder/multi_head_attention/key/bias/v
Å
LAdam/transformer_encoder/multi_head_attention/key/bias/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder/multi_head_attention/key/bias/v*
_output_shapes

:2*
dtype0
Ô
:Adam/transformer_encoder/multi_head_attention/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*K
shared_name<:Adam/transformer_encoder/multi_head_attention/key/kernel/v
Í
NAdam/transformer_encoder/multi_head_attention/key/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/key/kernel/v*"
_output_shapes
:22*
dtype0
Ð
:Adam/transformer_encoder/multi_head_attention/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*K
shared_name<:Adam/transformer_encoder/multi_head_attention/query/bias/v
É
NAdam/transformer_encoder/multi_head_attention/query/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/query/bias/v*
_output_shapes

:2*
dtype0
Ø
<Adam/transformer_encoder/multi_head_attention/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*M
shared_name><Adam/transformer_encoder/multi_head_attention/query/kernel/v
Ñ
PAdam/transformer_encoder/multi_head_attention/query/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder/multi_head_attention/query/kernel/v*"
_output_shapes
:22*
dtype0
Ð
:Adam/token_and_position_embedding/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*K
shared_name<:Adam/token_and_position_embedding/embedding_1/embeddings/v
É
NAdam/token_and_position_embedding/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp:Adam/token_and_position_embedding/embedding_1/embeddings/v*
_output_shapes

:.2*
dtype0
Í
8Adam/token_and_position_embedding/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ñ2*I
shared_name:8Adam/token_and_position_embedding/embedding/embeddings/v
Æ
LAdam/token_and_position_embedding/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp8Adam/token_and_position_embedding/embedding/embeddings/v*
_output_shapes
:	Ñ2*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:.*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:.*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:..*
dtype0

Adam/rnn/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸**
shared_nameAdam/rnn/lstm_cell/bias/m

-Adam/rnn/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/bias/m*
_output_shapes	
:¸*
dtype0
§
%Adam/rnn/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*6
shared_name'%Adam/rnn/lstm_cell/recurrent_kernel/m
 
9Adam/rnn/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp%Adam/rnn/lstm_cell/recurrent_kernel/m*
_output_shapes
:	.¸*
dtype0

Adam/rnn/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*,
shared_nameAdam/rnn/lstm_cell/kernel/m

/Adam/rnn/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/kernel/m*
_output_shapes
:	2¸*
dtype0
Â
5Adam/transformer_encoder/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*F
shared_name75Adam/transformer_encoder/layer_normalization_1/beta/m
»
IAdam/transformer_encoder/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_encoder/layer_normalization_1/beta/m*
_output_shapes
:2*
dtype0
Ä
6Adam/transformer_encoder/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*G
shared_name86Adam/transformer_encoder/layer_normalization_1/gamma/m
½
JAdam/transformer_encoder/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_encoder/layer_normalization_1/gamma/m*
_output_shapes
:2*
dtype0
¾
3Adam/transformer_encoder/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*D
shared_name53Adam/transformer_encoder/layer_normalization/beta/m
·
GAdam/transformer_encoder/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOp3Adam/transformer_encoder/layer_normalization/beta/m*
_output_shapes
:2*
dtype0
À
4Adam/transformer_encoder/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*E
shared_name64Adam/transformer_encoder/layer_normalization/gamma/m
¹
HAdam/transformer_encoder/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/transformer_encoder/layer_normalization/gamma/m*
_output_shapes
:2*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:2*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

: 2*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
: *
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:2 *
dtype0
â
EAdam/transformer_encoder/multi_head_attention/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*V
shared_nameGEAdam/transformer_encoder/multi_head_attention/attention_output/bias/m
Û
YAdam/transformer_encoder/multi_head_attention/attention_output/bias/m/Read/ReadVariableOpReadVariableOpEAdam/transformer_encoder/multi_head_attention/attention_output/bias/m*
_output_shapes
:2*
dtype0
î
GAdam/transformer_encoder/multi_head_attention/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*X
shared_nameIGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/m
ç
[Adam/transformer_encoder/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/m*"
_output_shapes
:22*
dtype0
Ð
:Adam/transformer_encoder/multi_head_attention/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*K
shared_name<:Adam/transformer_encoder/multi_head_attention/value/bias/m
É
NAdam/transformer_encoder/multi_head_attention/value/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/value/bias/m*
_output_shapes

:2*
dtype0
Ø
<Adam/transformer_encoder/multi_head_attention/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*M
shared_name><Adam/transformer_encoder/multi_head_attention/value/kernel/m
Ñ
PAdam/transformer_encoder/multi_head_attention/value/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder/multi_head_attention/value/kernel/m*"
_output_shapes
:22*
dtype0
Ì
8Adam/transformer_encoder/multi_head_attention/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*I
shared_name:8Adam/transformer_encoder/multi_head_attention/key/bias/m
Å
LAdam/transformer_encoder/multi_head_attention/key/bias/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder/multi_head_attention/key/bias/m*
_output_shapes

:2*
dtype0
Ô
:Adam/transformer_encoder/multi_head_attention/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*K
shared_name<:Adam/transformer_encoder/multi_head_attention/key/kernel/m
Í
NAdam/transformer_encoder/multi_head_attention/key/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/key/kernel/m*"
_output_shapes
:22*
dtype0
Ð
:Adam/transformer_encoder/multi_head_attention/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*K
shared_name<:Adam/transformer_encoder/multi_head_attention/query/bias/m
É
NAdam/transformer_encoder/multi_head_attention/query/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder/multi_head_attention/query/bias/m*
_output_shapes

:2*
dtype0
Ø
<Adam/transformer_encoder/multi_head_attention/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*M
shared_name><Adam/transformer_encoder/multi_head_attention/query/kernel/m
Ñ
PAdam/transformer_encoder/multi_head_attention/query/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder/multi_head_attention/query/kernel/m*"
_output_shapes
:22*
dtype0
Ð
:Adam/token_and_position_embedding/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*K
shared_name<:Adam/token_and_position_embedding/embedding_1/embeddings/m
É
NAdam/token_and_position_embedding/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp:Adam/token_and_position_embedding/embedding_1/embeddings/m*
_output_shapes

:.2*
dtype0
Í
8Adam/token_and_position_embedding/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ñ2*I
shared_name:8Adam/token_and_position_embedding/embedding/embeddings/m
Æ
LAdam/token_and_position_embedding/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp8Adam/token_and_position_embedding/embedding/embeddings/m*
_output_shapes
:	Ñ2*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:.*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:.*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:..*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
}
rnn/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*#
shared_namernn/lstm_cell/bias
v
&rnn/lstm_cell/bias/Read/ReadVariableOpReadVariableOprnn/lstm_cell/bias*
_output_shapes	
:¸*
dtype0

rnn/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*/
shared_name rnn/lstm_cell/recurrent_kernel

2rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOprnn/lstm_cell/recurrent_kernel*
_output_shapes
:	.¸*
dtype0

rnn/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*%
shared_namernn/lstm_cell/kernel
~
(rnn/lstm_cell/kernel/Read/ReadVariableOpReadVariableOprnn/lstm_cell/kernel*
_output_shapes
:	2¸*
dtype0
´
.transformer_encoder/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*?
shared_name0.transformer_encoder/layer_normalization_1/beta
­
Btransformer_encoder/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp.transformer_encoder/layer_normalization_1/beta*
_output_shapes
:2*
dtype0
¶
/transformer_encoder/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*@
shared_name1/transformer_encoder/layer_normalization_1/gamma
¯
Ctransformer_encoder/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp/transformer_encoder/layer_normalization_1/gamma*
_output_shapes
:2*
dtype0
°
,transformer_encoder/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*=
shared_name.,transformer_encoder/layer_normalization/beta
©
@transformer_encoder/layer_normalization/beta/Read/ReadVariableOpReadVariableOp,transformer_encoder/layer_normalization/beta*
_output_shapes
:2*
dtype0
²
-transformer_encoder/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*>
shared_name/-transformer_encoder/layer_normalization/gamma
«
Atransformer_encoder/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp-transformer_encoder/layer_normalization/gamma*
_output_shapes
:2*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:2*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: 2*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:2 *
dtype0
Ô
>transformer_encoder/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*O
shared_name@>transformer_encoder/multi_head_attention/attention_output/bias
Í
Rtransformer_encoder/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp>transformer_encoder/multi_head_attention/attention_output/bias*
_output_shapes
:2*
dtype0
à
@transformer_encoder/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@transformer_encoder/multi_head_attention/attention_output/kernel
Ù
Ttransformer_encoder/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp@transformer_encoder/multi_head_attention/attention_output/kernel*"
_output_shapes
:22*
dtype0
Â
3transformer_encoder/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*D
shared_name53transformer_encoder/multi_head_attention/value/bias
»
Gtransformer_encoder/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp3transformer_encoder/multi_head_attention/value/bias*
_output_shapes

:2*
dtype0
Ê
5transformer_encoder/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*F
shared_name75transformer_encoder/multi_head_attention/value/kernel
Ã
Itransformer_encoder/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp5transformer_encoder/multi_head_attention/value/kernel*"
_output_shapes
:22*
dtype0
¾
1transformer_encoder/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*B
shared_name31transformer_encoder/multi_head_attention/key/bias
·
Etransformer_encoder/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp1transformer_encoder/multi_head_attention/key/bias*
_output_shapes

:2*
dtype0
Æ
3transformer_encoder/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*D
shared_name53transformer_encoder/multi_head_attention/key/kernel
¿
Gtransformer_encoder/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp3transformer_encoder/multi_head_attention/key/kernel*"
_output_shapes
:22*
dtype0
Â
3transformer_encoder/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*D
shared_name53transformer_encoder/multi_head_attention/query/bias
»
Gtransformer_encoder/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp3transformer_encoder/multi_head_attention/query/bias*
_output_shapes

:2*
dtype0
Ê
5transformer_encoder/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*F
shared_name75transformer_encoder/multi_head_attention/query/kernel
Ã
Itransformer_encoder/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp5transformer_encoder/multi_head_attention/query/kernel*"
_output_shapes
:22*
dtype0
Â
3token_and_position_embedding/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*D
shared_name53token_and_position_embedding/embedding_1/embeddings
»
Gtoken_and_position_embedding/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp3token_and_position_embedding/embedding_1/embeddings*
_output_shapes

:.2*
dtype0
¿
1token_and_position_embedding/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ñ2*B
shared_name31token_and_position_embedding/embedding/embeddings
¸
Etoken_and_position_embedding/embedding/embeddings/Read/ReadVariableOpReadVariableOp1token_and_position_embedding/embedding/embeddings*
_output_shapes
:	Ñ2*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:.*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:.*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:..*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ.


StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13token_and_position_embedding/embedding_1/embeddings1token_and_position_embedding/embedding/embeddings5transformer_encoder/multi_head_attention/query/kernel3transformer_encoder/multi_head_attention/query/bias3transformer_encoder/multi_head_attention/key/kernel1transformer_encoder/multi_head_attention/key/bias5transformer_encoder/multi_head_attention/value/kernel3transformer_encoder/multi_head_attention/value/bias@transformer_encoder/multi_head_attention/attention_output/kernel>transformer_encoder/multi_head_attention/attention_output/bias-transformer_encoder/layer_normalization/gamma,transformer_encoder/layer_normalization/betadense/kernel
dense/biasdense_1/kerneldense_1/bias/transformer_encoder/layer_normalization_1/gamma.transformer_encoder/layer_normalization_1/betarnn/lstm_cell/kernelrnn/lstm_cell/recurrent_kernelrnn/lstm_cell/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_30331022

NoOpNoOp
òÉ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¬É
value¡ÉBÉ BÉ

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb*
Þ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
att
ffn
 
layernorm1
!
layernorm2
"dropout1
#dropout2*
ª
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*cell
+
state_spec*
¦
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
¦
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias*
Â
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
P20
221
322
:23
;24*
Â
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
P20
221
322
:23
;24*
* 
°
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
6
Ztrace_0
[trace_1
\trace_2
]trace_3* 
* 
¸
^iter

_beta_1

`beta_2
	adecay
blearning_rate2mý3mþ:mÿ;m<m=m>m?m@mAmBmCmDmEmFmGmHmImJmKmLmMmNmOmPm2v3v:v;v<v=v>v?v@vAvBv Cv¡Dv¢Ev£Fv¤Gv¥Hv¦Iv§Jv¨Kv©LvªMv«Nv¬Ov­Pv®*

cserving_default* 

<0
=1*

<0
=1*
* 

dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

itrace_0* 

jtrace_0* 
 
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
<
embeddings*
 
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
=
embeddings*
z
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15*
z
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15*
* 

wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

|trace_0
}trace_1* 

~trace_0
trace_1* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense*
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Jgamma
Kbeta*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses
	¡axis
	Lgamma
Mbeta*
¬
¢	variables
£trainable_variables
¤regularization_losses
¥	keras_api
¦__call__
+§&call_and_return_all_conditional_losses
¨_random_generator* 
¬
©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses
¯_random_generator* 

N0
O1
P2*

N0
O1
P2*
* 
¥
°states
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
:
¶trace_0
·trace_1
¸trace_2
¹trace_3* 
:
ºtrace_0
»trace_1
¼trace_2
½trace_3* 
ë
¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses
Ä_random_generator
Å
state_size

Nkernel
Orecurrent_kernel
Pbias*
* 

20
31*

20
31*
* 

Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

Ëtrace_0* 

Ìtrace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 

Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

Òtrace_0* 

Ótrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1token_and_position_embedding/embedding/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3token_and_position_embedding/embedding_1/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_encoder/multi_head_attention/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3transformer_encoder/multi_head_attention/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3transformer_encoder/multi_head_attention/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1transformer_encoder/multi_head_attention/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_encoder/multi_head_attention/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3transformer_encoder/multi_head_attention/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE@transformer_encoder/multi_head_attention/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE>transformer_encoder/multi_head_attention/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
dense/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_1/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_1/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-transformer_encoder/layer_normalization/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,transformer_encoder/layer_normalization/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/transformer_encoder/layer_normalization_1/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.transformer_encoder/layer_normalization_1/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUErnn/lstm_cell/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUErnn/lstm_cell/recurrent_kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUErnn/lstm_cell/bias'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

Ô0
Õ1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

0
1*
* 
* 
* 
* 
* 

<0*

<0*
* 

Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 

=0*

=0*
* 

Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
* 
.
0
1
 2
!3
"4
#5*
* 
* 
* 
* 
* 
* 
* 
<
>0
?1
@2
A3
B4
C5
D6
E7*
<
>0
?1
@2
A3
B4
C5
D6
E7*
* 

ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
ß
å	variables
ætrainable_variables
çregularization_losses
è	keras_api
é__call__
+ê&call_and_return_all_conditional_losses
ëpartial_output_shape
ìfull_output_shape

>kernel
?bias*
ß
í	variables
îtrainable_variables
ïregularization_losses
ð	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses
ópartial_output_shape
ôfull_output_shape

@kernel
Abias*
ß
õ	variables
ötrainable_variables
÷regularization_losses
ø	keras_api
ù__call__
+ú&call_and_return_all_conditional_losses
ûpartial_output_shape
üfull_output_shape

Bkernel
Cbias*

ý	variables
þtrainable_variables
ÿregularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 
ß
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Dkernel
Ebias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Fkernel
Gbias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Hkernel
Ibias*
 
F0
G1
H2
I3*
 
F0
G1
H2
I3*
* 

non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
£trace_0
¤trace_1
¥trace_2
¦trace_3* 
:
§trace_0
¨trace_1
©trace_2
ªtrace_3* 

J0
K1*

J0
K1*
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 

L0
M1*

L0
M1*
* 

°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

µnon_trainable_variables
¶layers
·metrics
 ¸layer_regularization_losses
¹layer_metrics
¢	variables
£trainable_variables
¤regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

*0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

N0
O1
P2*

N0
O1
P2*
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses*

Ätrace_0
Åtrace_1* 

Ætrace_0
Çtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
È	variables
É	keras_api

Êtotal

Ëcount*
M
Ì	variables
Í	keras_api

Îtotal

Ïcount
Ð
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
4
0
1
2
3
4
5*
* 
* 
* 

>0
?1*

>0
?1*
* 

Ñnon_trainable_variables
Òlayers
Ómetrics
 Ôlayer_regularization_losses
Õlayer_metrics
å	variables
ætrainable_variables
çregularization_losses
é__call__
+ê&call_and_return_all_conditional_losses
'ê"call_and_return_conditional_losses*
* 
* 
* 
* 

@0
A1*

@0
A1*
* 

Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
í	variables
îtrainable_variables
ïregularization_losses
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses*
* 
* 
* 
* 

B0
C1*

B0
C1*
* 

Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
õ	variables
ötrainable_variables
÷regularization_losses
ù__call__
+ú&call_and_return_all_conditional_losses
'ú"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
ý	variables
þtrainable_variables
ÿregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

ånon_trainable_variables
ælayers
çmetrics
 èlayer_regularization_losses
élayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 

D0
E1*

D0
E1*
* 

ênon_trainable_variables
ëlayers
ìmetrics
 ílayer_regularization_losses
îlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 

F0
G1*

F0
G1*
* 

ïnon_trainable_variables
ðlayers
ñmetrics
 òlayer_regularization_losses
ólayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ôtrace_0* 

õtrace_0* 

H0
I1*

H0
I1*
* 

önon_trainable_variables
÷layers
ømetrics
 ùlayer_regularization_losses
úlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ûtrace_0* 

ütrace_0* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ê0
Ë1*

È	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Î0
Ï1*

Ì	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/token_and_position_embedding/embedding/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/token_and_position_embedding/embedding_1/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder/multi_head_attention/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder/multi_head_attention/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder/multi_head_attention/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUEGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUEEAdam/transformer_encoder/multi_head_attention/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/dense/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_1/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_1/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE4Adam/transformer_encoder/layer_normalization/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE3Adam/transformer_encoder/layer_normalization/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/transformer_encoder/layer_normalization_1/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE5Adam/transformer_encoder/layer_normalization_1/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/rnn/lstm_cell/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE%Adam/rnn/lstm_cell/recurrent_kernel/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/rnn/lstm_cell/bias/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/token_and_position_embedding/embedding/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/token_and_position_embedding/embedding_1/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder/multi_head_attention/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder/multi_head_attention/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder/multi_head_attention/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_encoder/multi_head_attention/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUEGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUEEAdam/transformer_encoder/multi_head_attention/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/dense/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_1/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_1/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE4Adam/transformer_encoder/layer_normalization/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE3Adam/transformer_encoder/layer_normalization/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/transformer_encoder/layer_normalization_1/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE5Adam/transformer_encoder/layer_normalization_1/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/rnn/lstm_cell/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE%Adam/rnn/lstm_cell/recurrent_kernel/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/rnn/lstm_cell/bias/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¶)
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpEtoken_and_position_embedding/embedding/embeddings/Read/ReadVariableOpGtoken_and_position_embedding/embedding_1/embeddings/Read/ReadVariableOpItransformer_encoder/multi_head_attention/query/kernel/Read/ReadVariableOpGtransformer_encoder/multi_head_attention/query/bias/Read/ReadVariableOpGtransformer_encoder/multi_head_attention/key/kernel/Read/ReadVariableOpEtransformer_encoder/multi_head_attention/key/bias/Read/ReadVariableOpItransformer_encoder/multi_head_attention/value/kernel/Read/ReadVariableOpGtransformer_encoder/multi_head_attention/value/bias/Read/ReadVariableOpTtransformer_encoder/multi_head_attention/attention_output/kernel/Read/ReadVariableOpRtransformer_encoder/multi_head_attention/attention_output/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAtransformer_encoder/layer_normalization/gamma/Read/ReadVariableOp@transformer_encoder/layer_normalization/beta/Read/ReadVariableOpCtransformer_encoder/layer_normalization_1/gamma/Read/ReadVariableOpBtransformer_encoder/layer_normalization_1/beta/Read/ReadVariableOp(rnn/lstm_cell/kernel/Read/ReadVariableOp2rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOp&rnn/lstm_cell/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOpLAdam/token_and_position_embedding/embedding/embeddings/m/Read/ReadVariableOpNAdam/token_and_position_embedding/embedding_1/embeddings/m/Read/ReadVariableOpPAdam/transformer_encoder/multi_head_attention/query/kernel/m/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/query/bias/m/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/key/kernel/m/Read/ReadVariableOpLAdam/transformer_encoder/multi_head_attention/key/bias/m/Read/ReadVariableOpPAdam/transformer_encoder/multi_head_attention/value/kernel/m/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/value/bias/m/Read/ReadVariableOp[Adam/transformer_encoder/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpYAdam/transformer_encoder/multi_head_attention/attention_output/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOpHAdam/transformer_encoder/layer_normalization/gamma/m/Read/ReadVariableOpGAdam/transformer_encoder/layer_normalization/beta/m/Read/ReadVariableOpJAdam/transformer_encoder/layer_normalization_1/gamma/m/Read/ReadVariableOpIAdam/transformer_encoder/layer_normalization_1/beta/m/Read/ReadVariableOp/Adam/rnn/lstm_cell/kernel/m/Read/ReadVariableOp9Adam/rnn/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp-Adam/rnn/lstm_cell/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpLAdam/token_and_position_embedding/embedding/embeddings/v/Read/ReadVariableOpNAdam/token_and_position_embedding/embedding_1/embeddings/v/Read/ReadVariableOpPAdam/transformer_encoder/multi_head_attention/query/kernel/v/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/query/bias/v/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/key/kernel/v/Read/ReadVariableOpLAdam/transformer_encoder/multi_head_attention/key/bias/v/Read/ReadVariableOpPAdam/transformer_encoder/multi_head_attention/value/kernel/v/Read/ReadVariableOpNAdam/transformer_encoder/multi_head_attention/value/bias/v/Read/ReadVariableOp[Adam/transformer_encoder/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpYAdam/transformer_encoder/multi_head_attention/attention_output/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpHAdam/transformer_encoder/layer_normalization/gamma/v/Read/ReadVariableOpGAdam/transformer_encoder/layer_normalization/beta/v/Read/ReadVariableOpJAdam/transformer_encoder/layer_normalization_1/gamma/v/Read/ReadVariableOpIAdam/transformer_encoder/layer_normalization_1/beta/v/Read/ReadVariableOp/Adam/rnn/lstm_cell/kernel/v/Read/ReadVariableOp9Adam/rnn/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp-Adam/rnn/lstm_cell/bias/v/Read/ReadVariableOpConst*a
TinZ
X2V	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_save_30333370
¡
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2/kerneldense_2/biasdense_3/kerneldense_3/bias1token_and_position_embedding/embedding/embeddings3token_and_position_embedding/embedding_1/embeddings5transformer_encoder/multi_head_attention/query/kernel3transformer_encoder/multi_head_attention/query/bias3transformer_encoder/multi_head_attention/key/kernel1transformer_encoder/multi_head_attention/key/bias5transformer_encoder/multi_head_attention/value/kernel3transformer_encoder/multi_head_attention/value/bias@transformer_encoder/multi_head_attention/attention_output/kernel>transformer_encoder/multi_head_attention/attention_output/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias-transformer_encoder/layer_normalization/gamma,transformer_encoder/layer_normalization/beta/transformer_encoder/layer_normalization_1/gamma.transformer_encoder/layer_normalization_1/betarnn/lstm_cell/kernelrnn/lstm_cell/recurrent_kernelrnn/lstm_cell/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/m8Adam/token_and_position_embedding/embedding/embeddings/m:Adam/token_and_position_embedding/embedding_1/embeddings/m<Adam/transformer_encoder/multi_head_attention/query/kernel/m:Adam/transformer_encoder/multi_head_attention/query/bias/m:Adam/transformer_encoder/multi_head_attention/key/kernel/m8Adam/transformer_encoder/multi_head_attention/key/bias/m<Adam/transformer_encoder/multi_head_attention/value/kernel/m:Adam/transformer_encoder/multi_head_attention/value/bias/mGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/mEAdam/transformer_encoder/multi_head_attention/attention_output/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/m4Adam/transformer_encoder/layer_normalization/gamma/m3Adam/transformer_encoder/layer_normalization/beta/m6Adam/transformer_encoder/layer_normalization_1/gamma/m5Adam/transformer_encoder/layer_normalization_1/beta/mAdam/rnn/lstm_cell/kernel/m%Adam/rnn/lstm_cell/recurrent_kernel/mAdam/rnn/lstm_cell/bias/mAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v8Adam/token_and_position_embedding/embedding/embeddings/v:Adam/token_and_position_embedding/embedding_1/embeddings/v<Adam/transformer_encoder/multi_head_attention/query/kernel/v:Adam/transformer_encoder/multi_head_attention/query/bias/v:Adam/transformer_encoder/multi_head_attention/key/kernel/v8Adam/transformer_encoder/multi_head_attention/key/bias/v<Adam/transformer_encoder/multi_head_attention/value/kernel/v:Adam/transformer_encoder/multi_head_attention/value/bias/vGAdam/transformer_encoder/multi_head_attention/attention_output/kernel/vEAdam/transformer_encoder/multi_head_attention/attention_output/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v4Adam/transformer_encoder/layer_normalization/gamma/v3Adam/transformer_encoder/layer_normalization/beta/v6Adam/transformer_encoder/layer_normalization_1/gamma/v5Adam/transformer_encoder/layer_normalization_1/beta/vAdam/rnn/lstm_cell/kernel/v%Adam/rnn/lstm_cell/recurrent_kernel/vAdam/rnn/lstm_cell/bias/v*`
TinY
W2U*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference__traced_restore_30333632¨#
®
Ð
-__inference_sequential_layer_call_fn_30332804

inputs
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_30329366s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
¯	

rnn_while_cond_30331647$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3&
"rnn_while_less_rnn_strided_slice_1>
:rnn_while_rnn_while_cond_30331647___redundant_placeholder0>
:rnn_while_rnn_while_cond_30331647___redundant_placeholder1>
:rnn_while_rnn_while_cond_30331647___redundant_placeholder2>
:rnn_while_rnn_while_cond_30331647___redundant_placeholder3
rnn_while_identity
r
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: S
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: "1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
¢
ú
C__inference_dense_layer_call_and_return_conditional_losses_30329263

inputs3
!tensordot_readvariableop_resource:2 -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs


ö
E__inference_dense_2_layer_call_and_return_conditional_losses_30332759

inputs0
matmul_readvariableop_resource:..-
biasadd_readvariableop_resource:.
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:..*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
¿'
÷

C__inference_model_layer_call_and_return_conditional_losses_30330733

inputs7
%token_and_position_embedding_30330677:.28
%token_and_position_embedding_30330679:	Ñ22
transformer_encoder_30330682:22.
transformer_encoder_30330684:22
transformer_encoder_30330686:22.
transformer_encoder_30330688:22
transformer_encoder_30330690:22.
transformer_encoder_30330692:22
transformer_encoder_30330694:22*
transformer_encoder_30330696:2*
transformer_encoder_30330698:2*
transformer_encoder_30330700:2.
transformer_encoder_30330702:2 *
transformer_encoder_30330704: .
transformer_encoder_30330706: 2*
transformer_encoder_30330708:2*
transformer_encoder_30330710:2*
transformer_encoder_30330712:2
rnn_30330715:	2¸
rnn_30330717:	.¸
rnn_30330719:	¸"
dense_2_30330722:..
dense_2_30330724:."
dense_3_30330727:.
dense_3_30330729:
identity¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢rnn/StatefulPartitionedCall¢4token_and_position_embedding/StatefulPartitionedCall¢+transformer_encoder/StatefulPartitionedCallÊ
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_30330677%token_and_position_embedding_30330679*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_30329801
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_encoder_30330682transformer_encoder_30330684transformer_encoder_30330686transformer_encoder_30330688transformer_encoder_30330690transformer_encoder_30330692transformer_encoder_30330694transformer_encoder_30330696transformer_encoder_30330698transformer_encoder_30330700transformer_encoder_30330702transformer_encoder_30330704transformer_encoder_30330706transformer_encoder_30330708transformer_encoder_30330710transformer_encoder_30330712*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30330572 
rnn/StatefulPartitionedCallStatefulPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0rnn_30330715rnn_30330717rnn_30330719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_layer_call_and_return_conditional_losses_30330383
dense_2/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_2_30330722dense_2_30330724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_30330130
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_30330727dense_3_30330729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_30330146w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^rnn/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
Ø


model_rnn_while_cond_303291270
,model_rnn_while_model_rnn_while_loop_counter6
2model_rnn_while_model_rnn_while_maximum_iterations
model_rnn_while_placeholder!
model_rnn_while_placeholder_1!
model_rnn_while_placeholder_2!
model_rnn_while_placeholder_32
.model_rnn_while_less_model_rnn_strided_slice_1J
Fmodel_rnn_while_model_rnn_while_cond_30329127___redundant_placeholder0J
Fmodel_rnn_while_model_rnn_while_cond_30329127___redundant_placeholder1J
Fmodel_rnn_while_model_rnn_while_cond_30329127___redundant_placeholder2J
Fmodel_rnn_while_model_rnn_while_cond_30329127___redundant_placeholder3
model_rnn_while_identity

model/rnn/while/LessLessmodel_rnn_while_placeholder.model_rnn_while_less_model_rnn_strided_slice_1*
T0*
_output_shapes
: _
model/rnn/while/IdentityIdentitymodel/rnn/while/Less:z:0*
T0
*
_output_shapes
: "=
model_rnn_while_identity!model/rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
¿
Í
while_cond_30332654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_30332654___redundant_placeholder06
2while_while_cond_30332654___redundant_placeholder16
2while_while_cond_30332654___redundant_placeholder26
2while_while_cond_30332654___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
é
õ
,__inference_lstm_cell_layer_call_fn_30332935

inputs
states_0
states_1
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity

identity_1

identity_2¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30329485o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/1
Ð

(__inference_dense_layer_call_fn_30333025

inputs
unknown:2 
	unknown_0: 
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_30329263s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
®Þ
@
$__inference__traced_restore_30333632
file_prefix1
assignvariableop_dense_2_kernel:..-
assignvariableop_1_dense_2_bias:.3
!assignvariableop_2_dense_3_kernel:.-
assignvariableop_3_dense_3_bias:W
Dassignvariableop_4_token_and_position_embedding_embedding_embeddings:	Ñ2X
Fassignvariableop_5_token_and_position_embedding_embedding_1_embeddings:.2^
Hassignvariableop_6_transformer_encoder_multi_head_attention_query_kernel:22X
Fassignvariableop_7_transformer_encoder_multi_head_attention_query_bias:2\
Fassignvariableop_8_transformer_encoder_multi_head_attention_key_kernel:22V
Dassignvariableop_9_transformer_encoder_multi_head_attention_key_bias:2_
Iassignvariableop_10_transformer_encoder_multi_head_attention_value_kernel:22Y
Gassignvariableop_11_transformer_encoder_multi_head_attention_value_bias:2j
Tassignvariableop_12_transformer_encoder_multi_head_attention_attention_output_kernel:22`
Rassignvariableop_13_transformer_encoder_multi_head_attention_attention_output_bias:22
 assignvariableop_14_dense_kernel:2 ,
assignvariableop_15_dense_bias: 4
"assignvariableop_16_dense_1_kernel: 2.
 assignvariableop_17_dense_1_bias:2O
Aassignvariableop_18_transformer_encoder_layer_normalization_gamma:2N
@assignvariableop_19_transformer_encoder_layer_normalization_beta:2Q
Cassignvariableop_20_transformer_encoder_layer_normalization_1_gamma:2P
Bassignvariableop_21_transformer_encoder_layer_normalization_1_beta:2;
(assignvariableop_22_rnn_lstm_cell_kernel:	2¸E
2assignvariableop_23_rnn_lstm_cell_recurrent_kernel:	.¸5
&assignvariableop_24_rnn_lstm_cell_bias:	¸'
assignvariableop_25_adam_iter:	 )
assignvariableop_26_adam_beta_1: )
assignvariableop_27_adam_beta_2: (
assignvariableop_28_adam_decay: 0
&assignvariableop_29_adam_learning_rate: %
assignvariableop_30_total_1: %
assignvariableop_31_count_1: #
assignvariableop_32_total: #
assignvariableop_33_count: ;
)assignvariableop_34_adam_dense_2_kernel_m:..5
'assignvariableop_35_adam_dense_2_bias_m:.;
)assignvariableop_36_adam_dense_3_kernel_m:.5
'assignvariableop_37_adam_dense_3_bias_m:_
Lassignvariableop_38_adam_token_and_position_embedding_embedding_embeddings_m:	Ñ2`
Nassignvariableop_39_adam_token_and_position_embedding_embedding_1_embeddings_m:.2f
Passignvariableop_40_adam_transformer_encoder_multi_head_attention_query_kernel_m:22`
Nassignvariableop_41_adam_transformer_encoder_multi_head_attention_query_bias_m:2d
Nassignvariableop_42_adam_transformer_encoder_multi_head_attention_key_kernel_m:22^
Lassignvariableop_43_adam_transformer_encoder_multi_head_attention_key_bias_m:2f
Passignvariableop_44_adam_transformer_encoder_multi_head_attention_value_kernel_m:22`
Nassignvariableop_45_adam_transformer_encoder_multi_head_attention_value_bias_m:2q
[assignvariableop_46_adam_transformer_encoder_multi_head_attention_attention_output_kernel_m:22g
Yassignvariableop_47_adam_transformer_encoder_multi_head_attention_attention_output_bias_m:29
'assignvariableop_48_adam_dense_kernel_m:2 3
%assignvariableop_49_adam_dense_bias_m: ;
)assignvariableop_50_adam_dense_1_kernel_m: 25
'assignvariableop_51_adam_dense_1_bias_m:2V
Hassignvariableop_52_adam_transformer_encoder_layer_normalization_gamma_m:2U
Gassignvariableop_53_adam_transformer_encoder_layer_normalization_beta_m:2X
Jassignvariableop_54_adam_transformer_encoder_layer_normalization_1_gamma_m:2W
Iassignvariableop_55_adam_transformer_encoder_layer_normalization_1_beta_m:2B
/assignvariableop_56_adam_rnn_lstm_cell_kernel_m:	2¸L
9assignvariableop_57_adam_rnn_lstm_cell_recurrent_kernel_m:	.¸<
-assignvariableop_58_adam_rnn_lstm_cell_bias_m:	¸;
)assignvariableop_59_adam_dense_2_kernel_v:..5
'assignvariableop_60_adam_dense_2_bias_v:.;
)assignvariableop_61_adam_dense_3_kernel_v:.5
'assignvariableop_62_adam_dense_3_bias_v:_
Lassignvariableop_63_adam_token_and_position_embedding_embedding_embeddings_v:	Ñ2`
Nassignvariableop_64_adam_token_and_position_embedding_embedding_1_embeddings_v:.2f
Passignvariableop_65_adam_transformer_encoder_multi_head_attention_query_kernel_v:22`
Nassignvariableop_66_adam_transformer_encoder_multi_head_attention_query_bias_v:2d
Nassignvariableop_67_adam_transformer_encoder_multi_head_attention_key_kernel_v:22^
Lassignvariableop_68_adam_transformer_encoder_multi_head_attention_key_bias_v:2f
Passignvariableop_69_adam_transformer_encoder_multi_head_attention_value_kernel_v:22`
Nassignvariableop_70_adam_transformer_encoder_multi_head_attention_value_bias_v:2q
[assignvariableop_71_adam_transformer_encoder_multi_head_attention_attention_output_kernel_v:22g
Yassignvariableop_72_adam_transformer_encoder_multi_head_attention_attention_output_bias_v:29
'assignvariableop_73_adam_dense_kernel_v:2 3
%assignvariableop_74_adam_dense_bias_v: ;
)assignvariableop_75_adam_dense_1_kernel_v: 25
'assignvariableop_76_adam_dense_1_bias_v:2V
Hassignvariableop_77_adam_transformer_encoder_layer_normalization_gamma_v:2U
Gassignvariableop_78_adam_transformer_encoder_layer_normalization_beta_v:2X
Jassignvariableop_79_adam_transformer_encoder_layer_normalization_1_gamma_v:2W
Iassignvariableop_80_adam_transformer_encoder_layer_normalization_1_beta_v:2B
/assignvariableop_81_adam_rnn_lstm_cell_kernel_v:	2¸L
9assignvariableop_82_adam_rnn_lstm_cell_recurrent_kernel_v:	.¸<
-assignvariableop_83_adam_rnn_lstm_cell_bias_v:	¸
identity_85¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_9Ï(
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*õ'
valueë'Bè'UB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*¿
valueµB²UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ê
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ê
_output_shapes×
Ô:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*c
dtypesY
W2U	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_4AssignVariableOpDassignvariableop_4_token_and_position_embedding_embedding_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_5AssignVariableOpFassignvariableop_5_token_and_position_embedding_embedding_1_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_6AssignVariableOpHassignvariableop_6_transformer_encoder_multi_head_attention_query_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_7AssignVariableOpFassignvariableop_7_transformer_encoder_multi_head_attention_query_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_8AssignVariableOpFassignvariableop_8_transformer_encoder_multi_head_attention_key_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_9AssignVariableOpDassignvariableop_9_transformer_encoder_multi_head_attention_key_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_10AssignVariableOpIassignvariableop_10_transformer_encoder_multi_head_attention_value_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_11AssignVariableOpGassignvariableop_11_transformer_encoder_multi_head_attention_value_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_12AssignVariableOpTassignvariableop_12_transformer_encoder_multi_head_attention_attention_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_13AssignVariableOpRassignvariableop_13_transformer_encoder_multi_head_attention_attention_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp assignvariableop_14_dense_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_dense_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_18AssignVariableOpAassignvariableop_18_transformer_encoder_layer_normalization_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_19AssignVariableOp@assignvariableop_19_transformer_encoder_layer_normalization_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_20AssignVariableOpCassignvariableop_20_transformer_encoder_layer_normalization_1_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_transformer_encoder_layer_normalization_1_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp(assignvariableop_22_rnn_lstm_cell_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_23AssignVariableOp2assignvariableop_23_rnn_lstm_cell_recurrent_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp&assignvariableop_24_rnn_lstm_cell_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_iterIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_beta_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_beta_2Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_decayIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp&assignvariableop_29_adam_learning_rateIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_total_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_count_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_totalIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_countIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_2_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_2_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_3_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_dense_3_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_38AssignVariableOpLassignvariableop_38_adam_token_and_position_embedding_embedding_embeddings_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_39AssignVariableOpNassignvariableop_39_adam_token_and_position_embedding_embedding_1_embeddings_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_40AssignVariableOpPassignvariableop_40_adam_transformer_encoder_multi_head_attention_query_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_41AssignVariableOpNassignvariableop_41_adam_transformer_encoder_multi_head_attention_query_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_42AssignVariableOpNassignvariableop_42_adam_transformer_encoder_multi_head_attention_key_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_43AssignVariableOpLassignvariableop_43_adam_transformer_encoder_multi_head_attention_key_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_44AssignVariableOpPassignvariableop_44_adam_transformer_encoder_multi_head_attention_value_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_45AssignVariableOpNassignvariableop_45_adam_transformer_encoder_multi_head_attention_value_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ì
AssignVariableOp_46AssignVariableOp[assignvariableop_46_adam_transformer_encoder_multi_head_attention_attention_output_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ê
AssignVariableOp_47AssignVariableOpYassignvariableop_47_adam_transformer_encoder_multi_head_attention_attention_output_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp%assignvariableop_49_adam_dense_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_dense_1_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_1_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_52AssignVariableOpHassignvariableop_52_adam_transformer_encoder_layer_normalization_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_53AssignVariableOpGassignvariableop_53_adam_transformer_encoder_layer_normalization_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_54AssignVariableOpJassignvariableop_54_adam_transformer_encoder_layer_normalization_1_gamma_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_55AssignVariableOpIassignvariableop_55_adam_transformer_encoder_layer_normalization_1_beta_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_56AssignVariableOp/assignvariableop_56_adam_rnn_lstm_cell_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_57AssignVariableOp9assignvariableop_57_adam_rnn_lstm_cell_recurrent_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp-assignvariableop_58_adam_rnn_lstm_cell_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_dense_2_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_dense_2_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_dense_3_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_dense_3_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_63AssignVariableOpLassignvariableop_63_adam_token_and_position_embedding_embedding_embeddings_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_64AssignVariableOpNassignvariableop_64_adam_token_and_position_embedding_embedding_1_embeddings_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_65AssignVariableOpPassignvariableop_65_adam_transformer_encoder_multi_head_attention_query_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_66AssignVariableOpNassignvariableop_66_adam_transformer_encoder_multi_head_attention_query_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_67AssignVariableOpNassignvariableop_67_adam_transformer_encoder_multi_head_attention_key_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_68AssignVariableOpLassignvariableop_68_adam_transformer_encoder_multi_head_attention_key_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_69AssignVariableOpPassignvariableop_69_adam_transformer_encoder_multi_head_attention_value_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_70AssignVariableOpNassignvariableop_70_adam_transformer_encoder_multi_head_attention_value_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ì
AssignVariableOp_71AssignVariableOp[assignvariableop_71_adam_transformer_encoder_multi_head_attention_attention_output_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Ê
AssignVariableOp_72AssignVariableOpYassignvariableop_72_adam_transformer_encoder_multi_head_attention_attention_output_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp'assignvariableop_73_adam_dense_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp%assignvariableop_74_adam_dense_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp)assignvariableop_75_adam_dense_1_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp'assignvariableop_76_adam_dense_1_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_77AssignVariableOpHassignvariableop_77_adam_transformer_encoder_layer_normalization_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_78AssignVariableOpGassignvariableop_78_adam_transformer_encoder_layer_normalization_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_79AssignVariableOpJassignvariableop_79_adam_transformer_encoder_layer_normalization_1_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_80AssignVariableOpIassignvariableop_80_adam_transformer_encoder_layer_normalization_1_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_81AssignVariableOp/assignvariableop_81_adam_rnn_lstm_cell_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_82AssignVariableOp9assignvariableop_82_adam_rnn_lstm_cell_recurrent_kernel_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_83AssignVariableOp-assignvariableop_83_adam_rnn_lstm_cell_bias_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_84Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_85IdentityIdentity_84:output:0^NoOp_1*
T0*
_output_shapes
: ô
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_85Identity_85:output:0*¿
_input_shapes­
ª: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¨<
·	
rnn_while_body_30331648$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0G
4rnn_while_lstm_cell_matmul_readvariableop_resource_0:	2¸I
6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	.¸D
5rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	¸
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4
rnn_while_identity_5!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorE
2rnn_while_lstm_cell_matmul_readvariableop_resource:	2¸G
4rnn_while_lstm_cell_matmul_1_readvariableop_resource:	.¸B
3rnn_while_lstm_cell_biasadd_readvariableop_resource:	¸¢*rnn/while/lstm_cell/BiasAdd/ReadVariableOp¢)rnn/while/lstm_cell/MatMul/ReadVariableOp¢+rnn/while/lstm_cell/MatMul_1/ReadVariableOp
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   º
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp4rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0À
rnn/while/lstm_cell/MatMulMatMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:01rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸£
+rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0§
rnn/while/lstm_cell/MatMul_1MatMulrnn_while_placeholder_23rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¡
rnn/while/lstm_cell/addAddV2$rnn/while/lstm_cell/MatMul:product:0&rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
*rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0ª
rnn/while/lstm_cell/BiasAddBiasAddrnn/while/lstm_cell/add:z:02rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
#rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
rnn/while/lstm_cell/splitSplit,rnn/while/lstm_cell/split/split_dim:output:0$rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split|
rnn/while/lstm_cell/SigmoidSigmoid"rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn/while/lstm_cell/Sigmoid_1Sigmoid"rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/while/lstm_cell/mulMul!rnn/while/lstm_cell/Sigmoid_1:y:0rnn_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
rnn/while/lstm_cell/TanhTanh"rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/while/lstm_cell/mul_1Mulrnn/while/lstm_cell/Sigmoid:y:0rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/while/lstm_cell/add_1AddV2rnn/while/lstm_cell/mul:z:0rnn/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn/while/lstm_cell/Sigmoid_2Sigmoid"rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.s
rnn/while/lstm_cell/Tanh_1Tanhrnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/while/lstm_cell/mul_2Mul!rnn/while/lstm_cell/Sigmoid_2:y:0rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
4rnn/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ú
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1=rnn/while/TensorArrayV2Write/TensorListSetItem/index:output:0rnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒQ
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: S
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: e
rnn/while/IdentityIdentityrnn/while/add_1:z:0^rnn/while/NoOp*
T0*
_output_shapes
: z
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations^rnn/while/NoOp*
T0*
_output_shapes
: e
rnn/while/Identity_2Identityrnn/while/add:z:0^rnn/while/NoOp*
T0*
_output_shapes
: 
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn/while/NoOp*
T0*
_output_shapes
: 
rnn/while/Identity_4Identityrnn/while/lstm_cell/mul_2:z:0^rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/while/Identity_5Identityrnn/while/lstm_cell/add_1:z:0^rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.×
rnn/while/NoOpNoOp+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "1
rnn_while_identityrnn/while/Identity:output:0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"5
rnn_while_identity_5rnn/while/Identity_5:output:0"l
3rnn_while_lstm_cell_biasadd_readvariableop_resource5rnn_while_lstm_cell_biasadd_readvariableop_resource_0"n
4rnn_while_lstm_cell_matmul_1_readvariableop_resource6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"j
2rnn_while_lstm_cell_matmul_readvariableop_resource4rnn_while_lstm_cell_matmul_readvariableop_resource_0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"¸
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2X
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp*rnn/while/lstm_cell/BiasAdd/ReadVariableOp2V
)rnn/while/lstm_cell/MatMul/ReadVariableOp)rnn/while/lstm_cell/MatMul/ReadVariableOp2Z
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp+rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
I

A__inference_rnn_layer_call_and_return_conditional_losses_30332595

inputs;
(lstm_cell_matmul_readvariableop_resource:	2¸=
*lstm_cell_matmul_1_readvariableop_resource:	.¸8
)lstm_cell_biasadd_readvariableop_resource:	¸
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:.ÿÿÿÿÿÿÿÿÿ2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ._
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30332511*
condR
while_cond_30332510*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ê7
·
while_body_30330027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	2¸E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	.¸@
1while_lstm_cell_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	2¸C
0while_lstm_cell_matmul_1_readvariableop_resource:	.¸>
/while_lstm_cell_biasadd_readvariableop_resource:	¸¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ê
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
§
²
H__inference_sequential_layer_call_and_return_conditional_losses_30329418
dense_input 
dense_30329407:2 
dense_30329409: "
dense_1_30329412: 2
dense_1_30329414:2
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCalló
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_30329407dense_30329409*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_30329263
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_30329412dense_1_30329414*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_30329299{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%
_user_specified_namedense_input
Ö
¶
6__inference_transformer_encoder_layer_call_fn_30331815

inputs
unknown:22
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:2
	unknown_8:2
	unknown_9:2 

unknown_10: 

unknown_11: 2

unknown_12:2

unknown_13:2

unknown_14:2
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30329934s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ô

*__inference_dense_1_layer_call_fn_30333065

inputs
unknown: 2
	unknown_0:2
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_30329299s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ. : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 
_user_specified_nameinputs
ì
¬
?__inference_token_and_position_embedding_layer_call_fn_30331754
x
unknown:.2
	unknown_0:	Ñ2
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_30329801s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.

_user_specified_namex
©â
¢
C__inference_model_layer_call_and_return_conditional_losses_30331432

inputsT
Btoken_and_position_embedding_embedding_1_embedding_lookup_30331143:.2S
@token_and_position_embedding_embedding_embedding_lookup_30331149:	Ñ2j
Ttransformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:22\
Jtransformer_encoder_multi_head_attention_query_add_readvariableop_resource:2h
Rtransformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:22Z
Htransformer_encoder_multi_head_attention_key_add_readvariableop_resource:2j
Ttransformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:22\
Jtransformer_encoder_multi_head_attention_value_add_readvariableop_resource:2u
_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:22c
Utransformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource:2[
Mtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource:2W
Itransformer_encoder_layer_normalization_batchnorm_readvariableop_resource:2X
Ftransformer_encoder_sequential_dense_tensordot_readvariableop_resource:2 R
Dtransformer_encoder_sequential_dense_biasadd_readvariableop_resource: Z
Htransformer_encoder_sequential_dense_1_tensordot_readvariableop_resource: 2T
Ftransformer_encoder_sequential_dense_1_biasadd_readvariableop_resource:2]
Otransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:2Y
Ktransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource:2?
,rnn_lstm_cell_matmul_readvariableop_resource:	2¸A
.rnn_lstm_cell_matmul_1_readvariableop_resource:	.¸<
-rnn_lstm_cell_biasadd_readvariableop_resource:	¸8
&dense_2_matmul_readvariableop_resource:..5
'dense_2_biasadd_readvariableop_resource:.8
&dense_3_matmul_readvariableop_resource:.5
'dense_3_biasadd_readvariableop_resource:
identity¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢$rnn/lstm_cell/BiasAdd/ReadVariableOp¢#rnn/lstm_cell/MatMul/ReadVariableOp¢%rnn/lstm_cell/MatMul_1/ReadVariableOp¢	rnn/while¢7token_and_position_embedding/embedding/embedding_lookup¢9token_and_position_embedding/embedding_1/embedding_lookup¢@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp¢Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp¢Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp¢Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp¢Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp¢Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp¢?transformer_encoder/multi_head_attention/key/add/ReadVariableOp¢Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp¢Atransformer_encoder/multi_head_attention/query/add/ReadVariableOp¢Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp¢Atransformer_encoder/multi_head_attention/value/add/ReadVariableOp¢Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp¢;transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp¢=transformer_encoder/sequential/dense/Tensordot/ReadVariableOp¢=transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp¢?transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOpX
"token_and_position_embedding/ShapeShapeinputs*
T0*
_output_shapes
:
0token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*token_and_position_embedding/strided_sliceStridedSlice+token_and_position_embedding/Shape:output:09token_and_position_embedding/strided_slice/stack:output:0;token_and_position_embedding/strided_slice/stack_1:output:0;token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : j
(token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :â
"token_and_position_embedding/rangeRange1token_and_position_embedding/range/start:output:03token_and_position_embedding/strided_slice:output:01token_and_position_embedding/range/delta:output:0*
_output_shapes
:.Ð
9token_and_position_embedding/embedding_1/embedding_lookupResourceGatherBtoken_and_position_embedding_embedding_1_embedding_lookup_30331143+token_and_position_embedding/range:output:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding/embedding_1/embedding_lookup/30331143*
_output_shapes

:.2*
dtype0
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_1/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding/embedding_1/embedding_lookup/30331143*
_output_shapes

:.2Æ
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2|
+token_and_position_embedding/embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Û
7token_and_position_embedding/embedding/embedding_lookupResourceGather@token_and_position_embedding_embedding_embedding_lookup_30331149/token_and_position_embedding/embedding/Cast:y:0*
Tindices0*S
_classI
GEloc:@token_and_position_embedding/embedding/embedding_lookup/30331149*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0
@token_and_position_embedding/embedding/embedding_lookup/IdentityIdentity@token_and_position_embedding/embedding/embedding_lookup:output:0*
T0*S
_classI
GEloc:@token_and_position_embedding/embedding/embedding_lookup/30331149*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ï
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityItoken_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2û
 token_and_position_embedding/addAddV2Ktoken_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Mtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ä
Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¡
<transformer_encoder/multi_head_attention/query/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Stransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÌ
Atransformer_encoder/multi_head_attention/query/add/ReadVariableOpReadVariableOpJtransformer_encoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
2transformer_encoder/multi_head_attention/query/addAddV2Etransformer_encoder/multi_head_attention/query/einsum/Einsum:output:0Itransformer_encoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2à
Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
:transformer_encoder/multi_head_attention/key/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Qtransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÈ
?transformer_encoder/multi_head_attention/key/add/ReadVariableOpReadVariableOpHtransformer_encoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
0transformer_encoder/multi_head_attention/key/addAddV2Ctransformer_encoder/multi_head_attention/key/einsum/Einsum:output:0Gtransformer_encoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ä
Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¡
<transformer_encoder/multi_head_attention/value/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Stransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÌ
Atransformer_encoder/multi_head_attention/value/add/ReadVariableOpReadVariableOpJtransformer_encoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
2transformer_encoder/multi_head_attention/value/addAddV2Etransformer_encoder/multi_head_attention/value/einsum/Einsum:output:0Itransformer_encoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2s
.transformer_encoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>Þ
,transformer_encoder/multi_head_attention/MulMul6transformer_encoder/multi_head_attention/query/add:z:07transformer_encoder/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6transformer_encoder/multi_head_attention/einsum/EinsumEinsum4transformer_encoder/multi_head_attention/key/add:z:00transformer_encoder/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe¾
8transformer_encoder/multi_head_attention/softmax/SoftmaxSoftmax?transformer_encoder/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..Ã
9transformer_encoder/multi_head_attention/dropout/IdentityIdentityBtransformer_encoder/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.. 
8transformer_encoder/multi_head_attention/einsum_1/EinsumEinsumBtransformer_encoder/multi_head_attention/dropout/Identity:output:06transformer_encoder/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdú
Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ð
Gtransformer_encoder/multi_head_attention/attention_output/einsum/EinsumEinsumAtransformer_encoder/multi_head_attention/einsum_1/Einsum:output:0^transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeÞ
Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpUtransformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0¤
=transformer_encoder/multi_head_attention/attention_output/addAddV2Ptransformer_encoder/multi_head_attention/attention_output/einsum/Einsum:output:0Ttransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2©
$transformer_encoder/dropout/IdentityIdentityAtransformer_encoder/multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2«
transformer_encoder/addAddV2$token_and_position_embedding/add:z:0-transformer_encoder/dropout/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Ftransformer_encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4transformer_encoder/layer_normalization/moments/meanMeantransformer_encoder/add:z:0Otransformer_encoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Á
<transformer_encoder/layer_normalization/moments/StopGradientStopGradient=transformer_encoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ð
Atransformer_encoder/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_encoder/add:z:0Etransformer_encoder/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Jtransformer_encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8transformer_encoder/layer_normalization/moments/varianceMeanEtransformer_encoder/layer_normalization/moments/SquaredDifference:z:0Stransformer_encoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(|
7transformer_encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5transformer_encoder/layer_normalization/batchnorm/addAddV2Atransformer_encoder/layer_normalization/moments/variance:output:0@transformer_encoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.±
7transformer_encoder/layer_normalization/batchnorm/RsqrtRsqrt9transformer_encoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Î
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0ý
5transformer_encoder/layer_normalization/batchnorm/mulMul;transformer_encoder/layer_normalization/batchnorm/Rsqrt:y:0Ltransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ì
7transformer_encoder/layer_normalization/batchnorm/mul_1Multransformer_encoder/add:z:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2î
7transformer_encoder/layer_normalization/batchnorm/mul_2Mul=transformer_encoder/layer_normalization/moments/mean:output:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Æ
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpItransformer_encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0ù
5transformer_encoder/layer_normalization/batchnorm/subSubHtransformer_encoder/layer_normalization/batchnorm/ReadVariableOp:value:0;transformer_encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2î
7transformer_encoder/layer_normalization/batchnorm/add_1AddV2;transformer_encoder/layer_normalization/batchnorm/mul_1:z:09transformer_encoder/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ä
=transformer_encoder/sequential/dense/Tensordot/ReadVariableOpReadVariableOpFtransformer_encoder_sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0}
3transformer_encoder/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
3transformer_encoder/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
4transformer_encoder/sequential/dense/Tensordot/ShapeShape;transformer_encoder/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:~
<transformer_encoder/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ï
7transformer_encoder/sequential/dense/Tensordot/GatherV2GatherV2=transformer_encoder/sequential/dense/Tensordot/Shape:output:0<transformer_encoder/sequential/dense/Tensordot/free:output:0Etransformer_encoder/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
>transformer_encoder/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
9transformer_encoder/sequential/dense/Tensordot/GatherV2_1GatherV2=transformer_encoder/sequential/dense/Tensordot/Shape:output:0<transformer_encoder/sequential/dense/Tensordot/axes:output:0Gtransformer_encoder/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4transformer_encoder/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ý
3transformer_encoder/sequential/dense/Tensordot/ProdProd@transformer_encoder/sequential/dense/Tensordot/GatherV2:output:0=transformer_encoder/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 
6transformer_encoder/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ã
5transformer_encoder/sequential/dense/Tensordot/Prod_1ProdBtransformer_encoder/sequential/dense/Tensordot/GatherV2_1:output:0?transformer_encoder/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:transformer_encoder/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : °
5transformer_encoder/sequential/dense/Tensordot/concatConcatV2<transformer_encoder/sequential/dense/Tensordot/free:output:0<transformer_encoder/sequential/dense/Tensordot/axes:output:0Ctransformer_encoder/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:è
4transformer_encoder/sequential/dense/Tensordot/stackPack<transformer_encoder/sequential/dense/Tensordot/Prod:output:0>transformer_encoder/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ø
8transformer_encoder/sequential/dense/Tensordot/transpose	Transpose;transformer_encoder/layer_normalization/batchnorm/add_1:z:0>transformer_encoder/sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ù
6transformer_encoder/sequential/dense/Tensordot/ReshapeReshape<transformer_encoder/sequential/dense/Tensordot/transpose:y:0=transformer_encoder/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù
5transformer_encoder/sequential/dense/Tensordot/MatMulMatMul?transformer_encoder/sequential/dense/Tensordot/Reshape:output:0Etransformer_encoder/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
6transformer_encoder/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: ~
<transformer_encoder/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : »
7transformer_encoder/sequential/dense/Tensordot/concat_1ConcatV2@transformer_encoder/sequential/dense/Tensordot/GatherV2:output:0?transformer_encoder/sequential/dense/Tensordot/Const_2:output:0Etransformer_encoder/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ò
.transformer_encoder/sequential/dense/TensordotReshape?transformer_encoder/sequential/dense/Tensordot/MatMul:product:0@transformer_encoder/sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¼
;transformer_encoder/sequential/dense/BiasAdd/ReadVariableOpReadVariableOpDtransformer_encoder_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ë
,transformer_encoder/sequential/dense/BiasAddBiasAdd7transformer_encoder/sequential/dense/Tensordot:output:0Ctransformer_encoder/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
)transformer_encoder/sequential/dense/ReluRelu5transformer_encoder/sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. È
?transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOpReadVariableOpHtransformer_encoder_sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
5transformer_encoder/sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
5transformer_encoder/sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
6transformer_encoder/sequential/dense_1/Tensordot/ShapeShape7transformer_encoder/sequential/dense/Relu:activations:0*
T0*
_output_shapes
:
>transformer_encoder/sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
9transformer_encoder/sequential/dense_1/Tensordot/GatherV2GatherV2?transformer_encoder/sequential/dense_1/Tensordot/Shape:output:0>transformer_encoder/sequential/dense_1/Tensordot/free:output:0Gtransformer_encoder/sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
@transformer_encoder/sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
;transformer_encoder/sequential/dense_1/Tensordot/GatherV2_1GatherV2?transformer_encoder/sequential/dense_1/Tensordot/Shape:output:0>transformer_encoder/sequential/dense_1/Tensordot/axes:output:0Itransformer_encoder/sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
6transformer_encoder/sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ã
5transformer_encoder/sequential/dense_1/Tensordot/ProdProdBtransformer_encoder/sequential/dense_1/Tensordot/GatherV2:output:0?transformer_encoder/sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 
8transformer_encoder/sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: é
7transformer_encoder/sequential/dense_1/Tensordot/Prod_1ProdDtransformer_encoder/sequential/dense_1/Tensordot/GatherV2_1:output:0Atransformer_encoder/sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer_encoder/sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
7transformer_encoder/sequential/dense_1/Tensordot/concatConcatV2>transformer_encoder/sequential/dense_1/Tensordot/free:output:0>transformer_encoder/sequential/dense_1/Tensordot/axes:output:0Etransformer_encoder/sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:î
6transformer_encoder/sequential/dense_1/Tensordot/stackPack>transformer_encoder/sequential/dense_1/Tensordot/Prod:output:0@transformer_encoder/sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ø
:transformer_encoder/sequential/dense_1/Tensordot/transpose	Transpose7transformer_encoder/sequential/dense/Relu:activations:0@transformer_encoder/sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ÿ
8transformer_encoder/sequential/dense_1/Tensordot/ReshapeReshape>transformer_encoder/sequential/dense_1/Tensordot/transpose:y:0?transformer_encoder/sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
7transformer_encoder/sequential/dense_1/Tensordot/MatMulMatMulAtransformer_encoder/sequential/dense_1/Tensordot/Reshape:output:0Gtransformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
8transformer_encoder/sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
>transformer_encoder/sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
9transformer_encoder/sequential/dense_1/Tensordot/concat_1ConcatV2Btransformer_encoder/sequential/dense_1/Tensordot/GatherV2:output:0Atransformer_encoder/sequential/dense_1/Tensordot/Const_2:output:0Gtransformer_encoder/sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ø
0transformer_encoder/sequential/dense_1/TensordotReshapeAtransformer_encoder/sequential/dense_1/Tensordot/MatMul:product:0Btransformer_encoder/sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2À
=transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOpFtransformer_encoder_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0ñ
.transformer_encoder/sequential/dense_1/BiasAddBiasAdd9transformer_encoder/sequential/dense_1/Tensordot:output:0Etransformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¡
&transformer_encoder/dropout_1/IdentityIdentity7transformer_encoder/sequential/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Æ
transformer_encoder/add_1AddV2;transformer_encoder/layer_normalization/batchnorm/add_1:z:0/transformer_encoder/dropout_1/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Htransformer_encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:÷
6transformer_encoder/layer_normalization_1/moments/meanMeantransformer_encoder/add_1:z:0Qtransformer_encoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Å
>transformer_encoder/layer_normalization_1/moments/StopGradientStopGradient?transformer_encoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ö
Ctransformer_encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_encoder/add_1:z:0Gtransformer_encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Ltransformer_encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:©
:transformer_encoder/layer_normalization_1/moments/varianceMeanGtransformer_encoder/layer_normalization_1/moments/SquaredDifference:z:0Utransformer_encoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(~
9transformer_encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ÿ
7transformer_encoder/layer_normalization_1/batchnorm/addAddV2Ctransformer_encoder/layer_normalization_1/moments/variance:output:0Btransformer_encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.µ
9transformer_encoder/layer_normalization_1/batchnorm/RsqrtRsqrt;transformer_encoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ò
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
7transformer_encoder/layer_normalization_1/batchnorm/mulMul=transformer_encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Ntransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ò
9transformer_encoder/layer_normalization_1/batchnorm/mul_1Multransformer_encoder/add_1:z:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ô
9transformer_encoder/layer_normalization_1/batchnorm/mul_2Mul?transformer_encoder/layer_normalization_1/moments/mean:output:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ê
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpKtransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0ÿ
7transformer_encoder/layer_normalization_1/batchnorm/subSubJtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0=transformer_encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ô
9transformer_encoder/layer_normalization_1/batchnorm/add_1AddV2=transformer_encoder/layer_normalization_1/batchnorm/mul_1:z:0;transformer_encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2v
	rnn/ShapeShape=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn/zeros_1/packedPackrnn/strided_slice:output:0rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn/zeros_1Fillrnn/zeros_1/packed:output:0rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¬
rnn/transpose	Transpose=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0rnn/transpose/perm:output:0*
T0*+
_output_shapes
:.ÿÿÿÿÿÿÿÿÿ2L
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
:c
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÀ
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ì
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒc
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
rnn/lstm_cell/MatMulMatMulrnn/strided_slice_2:output:0+rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
%rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
rnn/lstm_cell/MatMul_1MatMulrnn/zeros:output:0-rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
rnn/lstm_cell/addAddV2rnn/lstm_cell/MatMul:product:0 rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
$rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
rnn/lstm_cell/BiasAddBiasAddrnn/lstm_cell/add:z:0,rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸_
rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
rnn/lstm_cell/splitSplit&rnn/lstm_cell/split/split_dim:output:0rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitp
rnn/lstm_cell/SigmoidSigmoidrnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn/lstm_cell/Sigmoid_1Sigmoidrnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
rnn/lstm_cell/mulMulrnn/lstm_cell/Sigmoid_1:y:0rnn/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
rnn/lstm_cell/TanhTanhrnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/lstm_cell/mul_1Mulrnn/lstm_cell/Sigmoid:y:0rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn/lstm_cell/add_1AddV2rnn/lstm_cell/mul:z:0rnn/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn/lstm_cell/Sigmoid_2Sigmoidrnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
rnn/lstm_cell/Tanh_1Tanhrnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/lstm_cell/mul_2Mulrnn/lstm_cell/Sigmoid_2:y:0rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   b
 rnn/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ñ
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0)rnn/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒJ
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿX
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/zeros_1:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0,rnn_lstm_cell_matmul_readvariableop_resource.rnn_lstm_cell_matmul_1_readvariableop_resource-rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
rnn_while_body_30331335*#
condR
rnn_while_cond_30331334*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   â
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsl
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿe
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maski
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¢
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0
dense_2/MatMulMatMulrnn/strided_slice_3:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp%^rnn/lstm_cell/BiasAdd/ReadVariableOp$^rnn/lstm_cell/MatMul/ReadVariableOp&^rnn/lstm_cell/MatMul_1/ReadVariableOp
^rnn/while8^token_and_position_embedding/embedding/embedding_lookup:^token_and_position_embedding/embedding_1/embedding_lookupA^transformer_encoder/layer_normalization/batchnorm/ReadVariableOpE^transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpC^transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpG^transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpM^transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpW^transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp@^transformer_encoder/multi_head_attention/key/add/ReadVariableOpJ^transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpB^transformer_encoder/multi_head_attention/query/add/ReadVariableOpL^transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpB^transformer_encoder/multi_head_attention/value/add/ReadVariableOpL^transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp<^transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp>^transformer_encoder/sequential/dense/Tensordot/ReadVariableOp>^transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp@^transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2L
$rnn/lstm_cell/BiasAdd/ReadVariableOp$rnn/lstm_cell/BiasAdd/ReadVariableOp2J
#rnn/lstm_cell/MatMul/ReadVariableOp#rnn/lstm_cell/MatMul/ReadVariableOp2N
%rnn/lstm_cell/MatMul_1/ReadVariableOp%rnn/lstm_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while2r
7token_and_position_embedding/embedding/embedding_lookup7token_and_position_embedding/embedding/embedding_lookup2v
9token_and_position_embedding/embedding_1/embedding_lookup9token_and_position_embedding/embedding_1/embedding_lookup2
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp2
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpDtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp2
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpBtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp2
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpFtransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2
Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpLtransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp2°
Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpVtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2
?transformer_encoder/multi_head_attention/key/add/ReadVariableOp?transformer_encoder/multi_head_attention/key/add/ReadVariableOp2
Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpItransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2
Atransformer_encoder/multi_head_attention/query/add/ReadVariableOpAtransformer_encoder/multi_head_attention/query/add/ReadVariableOp2
Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpKtransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2
Atransformer_encoder/multi_head_attention/value/add/ReadVariableOpAtransformer_encoder/multi_head_attention/value/add/ReadVariableOp2
Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpKtransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp2z
;transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp;transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp2~
=transformer_encoder/sequential/dense/Tensordot/ReadVariableOp=transformer_encoder/sequential/dense/Tensordot/ReadVariableOp2~
=transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp=transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp2
?transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp?transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
Ê7
·
while_body_30330299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	2¸E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	.¸@
1while_lstm_cell_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	2¸C
0while_lstm_cell_matmul_1_readvariableop_resource:	.¸>
/while_lstm_cell_biasadd_readvariableop_resource:	¸¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ê
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
Ê7
·
while_body_30332511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	2¸E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	.¸@
1while_lstm_cell_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	2¸C
0while_lstm_cell_matmul_1_readvariableop_resource:	.¸>
/while_lstm_cell_biasadd_readvariableop_resource:	¸¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ê
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 

µ
&__inference_rnn_layer_call_fn_30332130
inputs_0
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_layer_call_and_return_conditional_losses_30329569o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Ê7
·
while_body_30332367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	2¸E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	.¸@
1while_lstm_cell_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	2¸C
0while_lstm_cell_matmul_1_readvariableop_resource:	.¸>
/while_lstm_cell_biasadd_readvariableop_resource:	¸¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ê
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 

­
H__inference_sequential_layer_call_and_return_conditional_losses_30329366

inputs 
dense_30329355:2 
dense_30329357: "
dense_1_30329360: 2
dense_1_30329362:2
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallî
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_30329355dense_30329357*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_30329263
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_30329360dense_1_30329362*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_30329299{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ì
ü
E__inference_dense_1_layer_call_and_return_conditional_losses_30333095

inputs3
!tensordot_readvariableop_resource: 2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ. : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 
_user_specified_nameinputs
È

G__inference_lstm_cell_layer_call_and_return_conditional_losses_30332984

inputs
states_0
states_11
matmul_readvariableop_resource:	2¸3
 matmul_1_readvariableop_resource:	.¸.
biasadd_readvariableop_resource:	¸
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/1
Ö
¶
6__inference_transformer_encoder_layer_call_fn_30331852

inputs
unknown:22
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:2
	unknown_8:2
	unknown_9:2 

unknown_10: 

unknown_11: 2

unknown_12:2

unknown_13:2

unknown_14:2
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30330572s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
é
õ
,__inference_lstm_cell_layer_call_fn_30332952

inputs
states_0
states_1
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity

identity_1

identity_2¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30329632o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/1
§
²
H__inference_sequential_layer_call_and_return_conditional_losses_30329404
dense_input 
dense_30329393:2 
dense_30329395: "
dense_1_30329398: 2
dense_1_30329400:2
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCalló
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_30329393dense_30329395*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_30329263
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_30329398dense_1_30329400*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_30329299{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%
_user_specified_namedense_input
¿
Í
while_cond_30332222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_30332222___redundant_placeholder06
2while_while_cond_30332222___redundant_placeholder16
2while_while_cond_30332222___redundant_placeholder26
2while_while_cond_30332222___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
Ë=
Ï
H__inference_sequential_layer_call_and_return_conditional_losses_30332861

inputs9
'dense_tensordot_readvariableop_resource:2 3
%dense_biasadd_readvariableop_resource: ;
)dense_1_tensordot_readvariableop_resource: 25
'dense_1_biasadd_readvariableop_resource:2
identity¢dense/BiasAdd/ReadVariableOp¢dense/Tensordot/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢ dense_1/Tensordot/ReadVariableOp
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       K
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ´
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: _
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. `

dense/ReluReludense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¢
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2k
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ê
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
È	
ö
E__inference_dense_3_layer_call_and_return_conditional_losses_30332778

inputs0
matmul_readvariableop_resource:.-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:.*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
¯	

rnn_while_cond_30331334$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3&
"rnn_while_less_rnn_strided_slice_1>
:rnn_while_rnn_while_cond_30331334___redundant_placeholder0>
:rnn_while_rnn_while_cond_30331334___redundant_placeholder1>
:rnn_while_rnn_while_cond_30331334___redundant_placeholder2>
:rnn_while_rnn_while_cond_30331334___redundant_placeholder3
rnn_while_identity
r
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: S
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: "1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
¿
Í
while_cond_30329499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_30329499___redundant_placeholder06
2while_while_cond_30329499___redundant_placeholder16
2while_while_cond_30329499___redundant_placeholder26
2while_while_cond_30329499___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
Ü#
Ü
while_body_30329500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_30329524_0:	2¸-
while_lstm_cell_30329526_0:	.¸)
while_lstm_cell_30329528_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_30329524:	2¸+
while_lstm_cell_30329526:	.¸'
while_lstm_cell_30329528:	¸¢'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¬
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_30329524_0while_lstm_cell_30329526_0while_lstm_cell_30329528_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30329485r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_30329524while_lstm_cell_30329524_0"6
while_lstm_cell_30329526while_lstm_cell_30329526_0"6
while_lstm_cell_30329528while_lstm_cell_30329528_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
¨<
·	
rnn_while_body_30331335$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0G
4rnn_while_lstm_cell_matmul_readvariableop_resource_0:	2¸I
6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	.¸D
5rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	¸
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4
rnn_while_identity_5!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorE
2rnn_while_lstm_cell_matmul_readvariableop_resource:	2¸G
4rnn_while_lstm_cell_matmul_1_readvariableop_resource:	.¸B
3rnn_while_lstm_cell_biasadd_readvariableop_resource:	¸¢*rnn/while/lstm_cell/BiasAdd/ReadVariableOp¢)rnn/while/lstm_cell/MatMul/ReadVariableOp¢+rnn/while/lstm_cell/MatMul_1/ReadVariableOp
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   º
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
)rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp4rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0À
rnn/while/lstm_cell/MatMulMatMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:01rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸£
+rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0§
rnn/while/lstm_cell/MatMul_1MatMulrnn_while_placeholder_23rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¡
rnn/while/lstm_cell/addAddV2$rnn/while/lstm_cell/MatMul:product:0&rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
*rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0ª
rnn/while/lstm_cell/BiasAddBiasAddrnn/while/lstm_cell/add:z:02rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
#rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
rnn/while/lstm_cell/splitSplit,rnn/while/lstm_cell/split/split_dim:output:0$rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split|
rnn/while/lstm_cell/SigmoidSigmoid"rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn/while/lstm_cell/Sigmoid_1Sigmoid"rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/while/lstm_cell/mulMul!rnn/while/lstm_cell/Sigmoid_1:y:0rnn_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
rnn/while/lstm_cell/TanhTanh"rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/while/lstm_cell/mul_1Mulrnn/while/lstm_cell/Sigmoid:y:0rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/while/lstm_cell/add_1AddV2rnn/while/lstm_cell/mul:z:0rnn/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn/while/lstm_cell/Sigmoid_2Sigmoid"rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.s
rnn/while/lstm_cell/Tanh_1Tanhrnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/while/lstm_cell/mul_2Mul!rnn/while/lstm_cell/Sigmoid_2:y:0rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
4rnn/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ú
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1=rnn/while/TensorArrayV2Write/TensorListSetItem/index:output:0rnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒQ
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: S
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: e
rnn/while/IdentityIdentityrnn/while/add_1:z:0^rnn/while/NoOp*
T0*
_output_shapes
: z
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations^rnn/while/NoOp*
T0*
_output_shapes
: e
rnn/while/Identity_2Identityrnn/while/add:z:0^rnn/while/NoOp*
T0*
_output_shapes
: 
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn/while/NoOp*
T0*
_output_shapes
: 
rnn/while/Identity_4Identityrnn/while/lstm_cell/mul_2:z:0^rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/while/Identity_5Identityrnn/while/lstm_cell/add_1:z:0^rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.×
rnn/while/NoOpNoOp+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "1
rnn_while_identityrnn/while/Identity:output:0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"5
rnn_while_identity_5rnn/while/Identity_5:output:0"l
3rnn_while_lstm_cell_biasadd_readvariableop_resource5rnn_while_lstm_cell_biasadd_readvariableop_resource_0"n
4rnn_while_lstm_cell_matmul_1_readvariableop_resource6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"j
2rnn_while_lstm_cell_matmul_readvariableop_resource4rnn_while_lstm_cell_matmul_readvariableop_resource_0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"¸
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2X
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp*rnn/while/lstm_cell/BiasAdd/ReadVariableOp2V
)rnn/while/lstm_cell/MatMul/ReadVariableOp)rnn/while/lstm_cell/MatMul/ReadVariableOp2Z
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp+rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
ó
³
&__inference_rnn_layer_call_fn_30332152

inputs
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_layer_call_and_return_conditional_losses_30330111o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
¿
Í
while_cond_30330026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_30330026___redundant_placeholder06
2while_while_cond_30330026___redundant_placeholder16
2while_while_cond_30330026___redundant_placeholder26
2while_while_cond_30330026___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
ë´
è
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30331979

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_query_add_readvariableop_resource:2T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:22F
4multi_head_attention_key_add_readvariableop_resource:2V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_value_add_readvariableop_resource:2a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:22O
Amulti_head_attention_attention_output_add_readvariableop_resource:2G
9layer_normalization_batchnorm_mul_readvariableop_resource:2C
5layer_normalization_batchnorm_readvariableop_resource:2D
2sequential_dense_tensordot_readvariableop_resource:2 >
0sequential_dense_biasadd_readvariableop_resource: F
4sequential_dense_1_tensordot_readvariableop_resource: 2@
2sequential_dense_1_biasadd_readvariableop_resource:2I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_1_batchnorm_readvariableop_resource:2
identity¢,layer_normalization/batchnorm/ReadVariableOp¢0layer_normalization/batchnorm/mul/ReadVariableOp¢.layer_normalization_1/batchnorm/ReadVariableOp¢2layer_normalization_1/batchnorm/mul/ReadVariableOp¢8multi_head_attention/attention_output/add/ReadVariableOp¢Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp¢+multi_head_attention/key/add/ReadVariableOp¢5multi_head_attention/key/einsum/Einsum/ReadVariableOp¢-multi_head_attention/query/add/ReadVariableOp¢7multi_head_attention/query/einsum/Einsum/ReadVariableOp¢-multi_head_attention/value/add/ReadVariableOp¢7multi_head_attention/value/einsum/Einsum/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢)sequential/dense/Tensordot/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢+sequential/dense_1/Tensordot/ReadVariableOp¼
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0×
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde 
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Å
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¼
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¢
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..ä
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdÒ
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abe¶
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0è
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2e
addAddV2inputsdropout/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:µ
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.´
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ç
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75½
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¦
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Á
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2²
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0½
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2²
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:j
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¡
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: §
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : à
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¬
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¼
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2½
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¶
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¯
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. v
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.  
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0k
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       u
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ­
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : è
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:²
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¼
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ã
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2l
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¼
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0µ
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2y
dropout_1/IdentityIdentity#sequential/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.º
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ø
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ã
¯
(__inference_model_layer_call_fn_30330206
input_1
unknown:.2
	unknown_0:	Ñ2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:2
	unknown_9:2

unknown_10:2

unknown_11:2 

unknown_12: 

unknown_13: 2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:	2¸

unknown_18:	.¸

unknown_19:	¸

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_30330153o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_1
½
Õ
-__inference_sequential_layer_call_fn_30329317
dense_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_30329306s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%
_user_specified_namedense_input
À
®
(__inference_model_layer_call_fn_30331132

inputs
unknown:.2
	unknown_0:	Ñ2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:2
	unknown_9:2

unknown_10:2

unknown_11:2 

unknown_12: 

unknown_13: 2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:	2¸

unknown_18:	.¸

unknown_19:	¸

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_30330733o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
¿
Í
while_cond_30329691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_30329691___redundant_placeholder06
2while_while_cond_30329691___redundant_placeholder16
2while_while_cond_30329691___redundant_placeholder26
2while_while_cond_30329691___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
8
ý
A__inference_rnn_layer_call_and_return_conditional_losses_30329761

inputs%
lstm_cell_30329678:	2¸%
lstm_cell_30329680:	.¸!
lstm_cell_30329682:	¸
identity¢!lstm_cell/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskî
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_30329678lstm_cell_30329680lstm_cell_30329682*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30329632n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_30329678lstm_cell_30329680lstm_cell_30329682*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30329692*
condR
while_cond_30329691*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
áô
¢
C__inference_model_layer_call_and_return_conditional_losses_30331745

inputsT
Btoken_and_position_embedding_embedding_1_embedding_lookup_30331443:.2S
@token_and_position_embedding_embedding_embedding_lookup_30331449:	Ñ2j
Ttransformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:22\
Jtransformer_encoder_multi_head_attention_query_add_readvariableop_resource:2h
Rtransformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:22Z
Htransformer_encoder_multi_head_attention_key_add_readvariableop_resource:2j
Ttransformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:22\
Jtransformer_encoder_multi_head_attention_value_add_readvariableop_resource:2u
_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:22c
Utransformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource:2[
Mtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource:2W
Itransformer_encoder_layer_normalization_batchnorm_readvariableop_resource:2X
Ftransformer_encoder_sequential_dense_tensordot_readvariableop_resource:2 R
Dtransformer_encoder_sequential_dense_biasadd_readvariableop_resource: Z
Htransformer_encoder_sequential_dense_1_tensordot_readvariableop_resource: 2T
Ftransformer_encoder_sequential_dense_1_biasadd_readvariableop_resource:2]
Otransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:2Y
Ktransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource:2?
,rnn_lstm_cell_matmul_readvariableop_resource:	2¸A
.rnn_lstm_cell_matmul_1_readvariableop_resource:	.¸<
-rnn_lstm_cell_biasadd_readvariableop_resource:	¸8
&dense_2_matmul_readvariableop_resource:..5
'dense_2_biasadd_readvariableop_resource:.8
&dense_3_matmul_readvariableop_resource:.5
'dense_3_biasadd_readvariableop_resource:
identity¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢$rnn/lstm_cell/BiasAdd/ReadVariableOp¢#rnn/lstm_cell/MatMul/ReadVariableOp¢%rnn/lstm_cell/MatMul_1/ReadVariableOp¢	rnn/while¢7token_and_position_embedding/embedding/embedding_lookup¢9token_and_position_embedding/embedding_1/embedding_lookup¢@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp¢Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp¢Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp¢Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp¢Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp¢Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp¢?transformer_encoder/multi_head_attention/key/add/ReadVariableOp¢Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp¢Atransformer_encoder/multi_head_attention/query/add/ReadVariableOp¢Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp¢Atransformer_encoder/multi_head_attention/value/add/ReadVariableOp¢Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp¢;transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp¢=transformer_encoder/sequential/dense/Tensordot/ReadVariableOp¢=transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp¢?transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOpX
"token_and_position_embedding/ShapeShapeinputs*
T0*
_output_shapes
:
0token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*token_and_position_embedding/strided_sliceStridedSlice+token_and_position_embedding/Shape:output:09token_and_position_embedding/strided_slice/stack:output:0;token_and_position_embedding/strided_slice/stack_1:output:0;token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : j
(token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :â
"token_and_position_embedding/rangeRange1token_and_position_embedding/range/start:output:03token_and_position_embedding/strided_slice:output:01token_and_position_embedding/range/delta:output:0*
_output_shapes
:.Ð
9token_and_position_embedding/embedding_1/embedding_lookupResourceGatherBtoken_and_position_embedding_embedding_1_embedding_lookup_30331443+token_and_position_embedding/range:output:0*
Tindices0*U
_classK
IGloc:@token_and_position_embedding/embedding_1/embedding_lookup/30331443*
_output_shapes

:.2*
dtype0
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_1/embedding_lookup:output:0*
T0*U
_classK
IGloc:@token_and_position_embedding/embedding_1/embedding_lookup/30331443*
_output_shapes

:.2Æ
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2|
+token_and_position_embedding/embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Û
7token_and_position_embedding/embedding/embedding_lookupResourceGather@token_and_position_embedding_embedding_embedding_lookup_30331449/token_and_position_embedding/embedding/Cast:y:0*
Tindices0*S
_classI
GEloc:@token_and_position_embedding/embedding/embedding_lookup/30331449*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0
@token_and_position_embedding/embedding/embedding_lookup/IdentityIdentity@token_and_position_embedding/embedding/embedding_lookup:output:0*
T0*S
_classI
GEloc:@token_and_position_embedding/embedding/embedding_lookup/30331449*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ï
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityItoken_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2û
 token_and_position_embedding/addAddV2Ktoken_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Mtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ä
Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¡
<transformer_encoder/multi_head_attention/query/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Stransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÌ
Atransformer_encoder/multi_head_attention/query/add/ReadVariableOpReadVariableOpJtransformer_encoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
2transformer_encoder/multi_head_attention/query/addAddV2Etransformer_encoder/multi_head_attention/query/einsum/Einsum:output:0Itransformer_encoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2à
Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
:transformer_encoder/multi_head_attention/key/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Qtransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÈ
?transformer_encoder/multi_head_attention/key/add/ReadVariableOpReadVariableOpHtransformer_encoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
0transformer_encoder/multi_head_attention/key/addAddV2Ctransformer_encoder/multi_head_attention/key/einsum/Einsum:output:0Gtransformer_encoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ä
Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¡
<transformer_encoder/multi_head_attention/value/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Stransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÌ
Atransformer_encoder/multi_head_attention/value/add/ReadVariableOpReadVariableOpJtransformer_encoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
2transformer_encoder/multi_head_attention/value/addAddV2Etransformer_encoder/multi_head_attention/value/einsum/Einsum:output:0Itransformer_encoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2s
.transformer_encoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>Þ
,transformer_encoder/multi_head_attention/MulMul6transformer_encoder/multi_head_attention/query/add:z:07transformer_encoder/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6transformer_encoder/multi_head_attention/einsum/EinsumEinsum4transformer_encoder/multi_head_attention/key/add:z:00transformer_encoder/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe¾
8transformer_encoder/multi_head_attention/softmax/SoftmaxSoftmax?transformer_encoder/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.. 
8transformer_encoder/multi_head_attention/einsum_1/EinsumEinsumBtransformer_encoder/multi_head_attention/softmax/Softmax:softmax:06transformer_encoder/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdú
Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ð
Gtransformer_encoder/multi_head_attention/attention_output/einsum/EinsumEinsumAtransformer_encoder/multi_head_attention/einsum_1/Einsum:output:0^transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeÞ
Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpUtransformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0¤
=transformer_encoder/multi_head_attention/attention_output/addAddV2Ptransformer_encoder/multi_head_attention/attention_output/einsum/Einsum:output:0Ttransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2n
)transformer_encoder/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Û
'transformer_encoder/dropout/dropout/MulMulAtransformer_encoder/multi_head_attention/attention_output/add:z:02transformer_encoder/dropout/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)transformer_encoder/dropout/dropout/ShapeShapeAtransformer_encoder/multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:È
@transformer_encoder/dropout/dropout/random_uniform/RandomUniformRandomUniform2transformer_encoder/dropout/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0w
2transformer_encoder/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?þ
0transformer_encoder/dropout/dropout/GreaterEqualGreaterEqualItransformer_encoder/dropout/dropout/random_uniform/RandomUniform:output:0;transformer_encoder/dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2«
(transformer_encoder/dropout/dropout/CastCast4transformer_encoder/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Á
)transformer_encoder/dropout/dropout/Mul_1Mul+transformer_encoder/dropout/dropout/Mul:z:0,transformer_encoder/dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2«
transformer_encoder/addAddV2$token_and_position_embedding/add:z:0-transformer_encoder/dropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Ftransformer_encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4transformer_encoder/layer_normalization/moments/meanMeantransformer_encoder/add:z:0Otransformer_encoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Á
<transformer_encoder/layer_normalization/moments/StopGradientStopGradient=transformer_encoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ð
Atransformer_encoder/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_encoder/add:z:0Etransformer_encoder/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Jtransformer_encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8transformer_encoder/layer_normalization/moments/varianceMeanEtransformer_encoder/layer_normalization/moments/SquaredDifference:z:0Stransformer_encoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(|
7transformer_encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5transformer_encoder/layer_normalization/batchnorm/addAddV2Atransformer_encoder/layer_normalization/moments/variance:output:0@transformer_encoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.±
7transformer_encoder/layer_normalization/batchnorm/RsqrtRsqrt9transformer_encoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Î
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0ý
5transformer_encoder/layer_normalization/batchnorm/mulMul;transformer_encoder/layer_normalization/batchnorm/Rsqrt:y:0Ltransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ì
7transformer_encoder/layer_normalization/batchnorm/mul_1Multransformer_encoder/add:z:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2î
7transformer_encoder/layer_normalization/batchnorm/mul_2Mul=transformer_encoder/layer_normalization/moments/mean:output:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Æ
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpItransformer_encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0ù
5transformer_encoder/layer_normalization/batchnorm/subSubHtransformer_encoder/layer_normalization/batchnorm/ReadVariableOp:value:0;transformer_encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2î
7transformer_encoder/layer_normalization/batchnorm/add_1AddV2;transformer_encoder/layer_normalization/batchnorm/mul_1:z:09transformer_encoder/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ä
=transformer_encoder/sequential/dense/Tensordot/ReadVariableOpReadVariableOpFtransformer_encoder_sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0}
3transformer_encoder/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
3transformer_encoder/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
4transformer_encoder/sequential/dense/Tensordot/ShapeShape;transformer_encoder/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:~
<transformer_encoder/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ï
7transformer_encoder/sequential/dense/Tensordot/GatherV2GatherV2=transformer_encoder/sequential/dense/Tensordot/Shape:output:0<transformer_encoder/sequential/dense/Tensordot/free:output:0Etransformer_encoder/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
>transformer_encoder/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
9transformer_encoder/sequential/dense/Tensordot/GatherV2_1GatherV2=transformer_encoder/sequential/dense/Tensordot/Shape:output:0<transformer_encoder/sequential/dense/Tensordot/axes:output:0Gtransformer_encoder/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4transformer_encoder/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ý
3transformer_encoder/sequential/dense/Tensordot/ProdProd@transformer_encoder/sequential/dense/Tensordot/GatherV2:output:0=transformer_encoder/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 
6transformer_encoder/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ã
5transformer_encoder/sequential/dense/Tensordot/Prod_1ProdBtransformer_encoder/sequential/dense/Tensordot/GatherV2_1:output:0?transformer_encoder/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:transformer_encoder/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : °
5transformer_encoder/sequential/dense/Tensordot/concatConcatV2<transformer_encoder/sequential/dense/Tensordot/free:output:0<transformer_encoder/sequential/dense/Tensordot/axes:output:0Ctransformer_encoder/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:è
4transformer_encoder/sequential/dense/Tensordot/stackPack<transformer_encoder/sequential/dense/Tensordot/Prod:output:0>transformer_encoder/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ø
8transformer_encoder/sequential/dense/Tensordot/transpose	Transpose;transformer_encoder/layer_normalization/batchnorm/add_1:z:0>transformer_encoder/sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ù
6transformer_encoder/sequential/dense/Tensordot/ReshapeReshape<transformer_encoder/sequential/dense/Tensordot/transpose:y:0=transformer_encoder/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù
5transformer_encoder/sequential/dense/Tensordot/MatMulMatMul?transformer_encoder/sequential/dense/Tensordot/Reshape:output:0Etransformer_encoder/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
6transformer_encoder/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: ~
<transformer_encoder/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : »
7transformer_encoder/sequential/dense/Tensordot/concat_1ConcatV2@transformer_encoder/sequential/dense/Tensordot/GatherV2:output:0?transformer_encoder/sequential/dense/Tensordot/Const_2:output:0Etransformer_encoder/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ò
.transformer_encoder/sequential/dense/TensordotReshape?transformer_encoder/sequential/dense/Tensordot/MatMul:product:0@transformer_encoder/sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¼
;transformer_encoder/sequential/dense/BiasAdd/ReadVariableOpReadVariableOpDtransformer_encoder_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ë
,transformer_encoder/sequential/dense/BiasAddBiasAdd7transformer_encoder/sequential/dense/Tensordot:output:0Ctransformer_encoder/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
)transformer_encoder/sequential/dense/ReluRelu5transformer_encoder/sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. È
?transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOpReadVariableOpHtransformer_encoder_sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
5transformer_encoder/sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
5transformer_encoder/sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
6transformer_encoder/sequential/dense_1/Tensordot/ShapeShape7transformer_encoder/sequential/dense/Relu:activations:0*
T0*
_output_shapes
:
>transformer_encoder/sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
9transformer_encoder/sequential/dense_1/Tensordot/GatherV2GatherV2?transformer_encoder/sequential/dense_1/Tensordot/Shape:output:0>transformer_encoder/sequential/dense_1/Tensordot/free:output:0Gtransformer_encoder/sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
@transformer_encoder/sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
;transformer_encoder/sequential/dense_1/Tensordot/GatherV2_1GatherV2?transformer_encoder/sequential/dense_1/Tensordot/Shape:output:0>transformer_encoder/sequential/dense_1/Tensordot/axes:output:0Itransformer_encoder/sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
6transformer_encoder/sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ã
5transformer_encoder/sequential/dense_1/Tensordot/ProdProdBtransformer_encoder/sequential/dense_1/Tensordot/GatherV2:output:0?transformer_encoder/sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 
8transformer_encoder/sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: é
7transformer_encoder/sequential/dense_1/Tensordot/Prod_1ProdDtransformer_encoder/sequential/dense_1/Tensordot/GatherV2_1:output:0Atransformer_encoder/sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer_encoder/sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
7transformer_encoder/sequential/dense_1/Tensordot/concatConcatV2>transformer_encoder/sequential/dense_1/Tensordot/free:output:0>transformer_encoder/sequential/dense_1/Tensordot/axes:output:0Etransformer_encoder/sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:î
6transformer_encoder/sequential/dense_1/Tensordot/stackPack>transformer_encoder/sequential/dense_1/Tensordot/Prod:output:0@transformer_encoder/sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ø
:transformer_encoder/sequential/dense_1/Tensordot/transpose	Transpose7transformer_encoder/sequential/dense/Relu:activations:0@transformer_encoder/sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ÿ
8transformer_encoder/sequential/dense_1/Tensordot/ReshapeReshape>transformer_encoder/sequential/dense_1/Tensordot/transpose:y:0?transformer_encoder/sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
7transformer_encoder/sequential/dense_1/Tensordot/MatMulMatMulAtransformer_encoder/sequential/dense_1/Tensordot/Reshape:output:0Gtransformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
8transformer_encoder/sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
>transformer_encoder/sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
9transformer_encoder/sequential/dense_1/Tensordot/concat_1ConcatV2Btransformer_encoder/sequential/dense_1/Tensordot/GatherV2:output:0Atransformer_encoder/sequential/dense_1/Tensordot/Const_2:output:0Gtransformer_encoder/sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ø
0transformer_encoder/sequential/dense_1/TensordotReshapeAtransformer_encoder/sequential/dense_1/Tensordot/MatMul:product:0Btransformer_encoder/sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2À
=transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOpFtransformer_encoder_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0ñ
.transformer_encoder/sequential/dense_1/BiasAddBiasAdd9transformer_encoder/sequential/dense_1/Tensordot:output:0Etransformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2p
+transformer_encoder/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Õ
)transformer_encoder/dropout_1/dropout/MulMul7transformer_encoder/sequential/dense_1/BiasAdd:output:04transformer_encoder/dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
+transformer_encoder/dropout_1/dropout/ShapeShape7transformer_encoder/sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:Ì
Btransformer_encoder/dropout_1/dropout/random_uniform/RandomUniformRandomUniform4transformer_encoder/dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0y
4transformer_encoder/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
2transformer_encoder/dropout_1/dropout/GreaterEqualGreaterEqualKtransformer_encoder/dropout_1/dropout/random_uniform/RandomUniform:output:0=transformer_encoder/dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¯
*transformer_encoder/dropout_1/dropout/CastCast6transformer_encoder/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ç
+transformer_encoder/dropout_1/dropout/Mul_1Mul-transformer_encoder/dropout_1/dropout/Mul:z:0.transformer_encoder/dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Æ
transformer_encoder/add_1AddV2;transformer_encoder/layer_normalization/batchnorm/add_1:z:0/transformer_encoder/dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Htransformer_encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:÷
6transformer_encoder/layer_normalization_1/moments/meanMeantransformer_encoder/add_1:z:0Qtransformer_encoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Å
>transformer_encoder/layer_normalization_1/moments/StopGradientStopGradient?transformer_encoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ö
Ctransformer_encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_encoder/add_1:z:0Gtransformer_encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Ltransformer_encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:©
:transformer_encoder/layer_normalization_1/moments/varianceMeanGtransformer_encoder/layer_normalization_1/moments/SquaredDifference:z:0Utransformer_encoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(~
9transformer_encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ÿ
7transformer_encoder/layer_normalization_1/batchnorm/addAddV2Ctransformer_encoder/layer_normalization_1/moments/variance:output:0Btransformer_encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.µ
9transformer_encoder/layer_normalization_1/batchnorm/RsqrtRsqrt;transformer_encoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ò
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
7transformer_encoder/layer_normalization_1/batchnorm/mulMul=transformer_encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Ntransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ò
9transformer_encoder/layer_normalization_1/batchnorm/mul_1Multransformer_encoder/add_1:z:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ô
9transformer_encoder/layer_normalization_1/batchnorm/mul_2Mul?transformer_encoder/layer_normalization_1/moments/mean:output:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ê
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpKtransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0ÿ
7transformer_encoder/layer_normalization_1/batchnorm/subSubJtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0=transformer_encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ô
9transformer_encoder/layer_normalization_1/batchnorm/add_1AddV2=transformer_encoder/layer_normalization_1/batchnorm/mul_1:z:0;transformer_encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2v
	rnn/ShapeShape=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn/zeros_1/packedPackrnn/strided_slice:output:0rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn/zeros_1Fillrnn/zeros_1/packed:output:0rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¬
rnn/transpose	Transpose=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0rnn/transpose/perm:output:0*
T0*+
_output_shapes
:.ÿÿÿÿÿÿÿÿÿ2L
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
:c
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÀ
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ì
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒc
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ý
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
#rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
rnn/lstm_cell/MatMulMatMulrnn/strided_slice_2:output:0+rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
%rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
rnn/lstm_cell/MatMul_1MatMulrnn/zeros:output:0-rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
rnn/lstm_cell/addAddV2rnn/lstm_cell/MatMul:product:0 rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
$rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
rnn/lstm_cell/BiasAddBiasAddrnn/lstm_cell/add:z:0,rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸_
rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
rnn/lstm_cell/splitSplit&rnn/lstm_cell/split/split_dim:output:0rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitp
rnn/lstm_cell/SigmoidSigmoidrnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn/lstm_cell/Sigmoid_1Sigmoidrnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
rnn/lstm_cell/mulMulrnn/lstm_cell/Sigmoid_1:y:0rnn/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
rnn/lstm_cell/TanhTanhrnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/lstm_cell/mul_1Mulrnn/lstm_cell/Sigmoid:y:0rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn/lstm_cell/add_1AddV2rnn/lstm_cell/mul:z:0rnn/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn/lstm_cell/Sigmoid_2Sigmoidrnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
rnn/lstm_cell/Tanh_1Tanhrnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn/lstm_cell/mul_2Mulrnn/lstm_cell/Sigmoid_2:y:0rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   b
 rnn/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ñ
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0)rnn/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒJ
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿX
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/zeros_1:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0,rnn_lstm_cell_matmul_readvariableop_resource.rnn_lstm_cell_matmul_1_readvariableop_resource-rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
rnn_while_body_30331648*#
condR
rnn_while_cond_30331647*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   â
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsl
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿe
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maski
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¢
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0
dense_2/MatMulMatMulrnn/strided_slice_3:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp%^rnn/lstm_cell/BiasAdd/ReadVariableOp$^rnn/lstm_cell/MatMul/ReadVariableOp&^rnn/lstm_cell/MatMul_1/ReadVariableOp
^rnn/while8^token_and_position_embedding/embedding/embedding_lookup:^token_and_position_embedding/embedding_1/embedding_lookupA^transformer_encoder/layer_normalization/batchnorm/ReadVariableOpE^transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpC^transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpG^transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpM^transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpW^transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp@^transformer_encoder/multi_head_attention/key/add/ReadVariableOpJ^transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpB^transformer_encoder/multi_head_attention/query/add/ReadVariableOpL^transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpB^transformer_encoder/multi_head_attention/value/add/ReadVariableOpL^transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp<^transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp>^transformer_encoder/sequential/dense/Tensordot/ReadVariableOp>^transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp@^transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2L
$rnn/lstm_cell/BiasAdd/ReadVariableOp$rnn/lstm_cell/BiasAdd/ReadVariableOp2J
#rnn/lstm_cell/MatMul/ReadVariableOp#rnn/lstm_cell/MatMul/ReadVariableOp2N
%rnn/lstm_cell/MatMul_1/ReadVariableOp%rnn/lstm_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while2r
7token_and_position_embedding/embedding/embedding_lookup7token_and_position_embedding/embedding/embedding_lookup2v
9token_and_position_embedding/embedding_1/embedding_lookup9token_and_position_embedding/embedding_1/embedding_lookup2
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp2
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpDtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp2
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpBtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp2
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpFtransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2
Ltransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpLtransformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp2°
Vtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpVtransformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2
?transformer_encoder/multi_head_attention/key/add/ReadVariableOp?transformer_encoder/multi_head_attention/key/add/ReadVariableOp2
Itransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpItransformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2
Atransformer_encoder/multi_head_attention/query/add/ReadVariableOpAtransformer_encoder/multi_head_attention/query/add/ReadVariableOp2
Ktransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpKtransformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2
Atransformer_encoder/multi_head_attention/value/add/ReadVariableOpAtransformer_encoder/multi_head_attention/value/add/ReadVariableOp2
Ktransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpKtransformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp2z
;transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp;transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp2~
=transformer_encoder/sequential/dense/Tensordot/ReadVariableOp=transformer_encoder/sequential/dense/Tensordot/ReadVariableOp2~
=transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp=transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp2
?transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp?transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs

­
H__inference_sequential_layer_call_and_return_conditional_losses_30329306

inputs 
dense_30329264:2 
dense_30329266: "
dense_1_30329300: 2
dense_1_30329302:2
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallî
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_30329264dense_30329266*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_30329263
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_30329300dense_1_30329302*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_30329299{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
ø
¡
Z__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_30329801
x7
%embedding_1_embedding_lookup_30329788:.26
#embedding_embedding_lookup_30329794:	Ñ2
identity¢embedding/embedding_lookup¢embedding_1/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes
:.Ü
embedding_1/embedding_lookupResourceGather%embedding_1_embedding_lookup_30329788range:output:0*
Tindices0*8
_class.
,*loc:@embedding_1/embedding_lookup/30329788*
_output_shapes

:.2*
dtype0»
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_1/embedding_lookup/30329788*
_output_shapes

:.2
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2Z
embedding/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ç
embedding/embedding_lookupResourceGather#embedding_embedding_lookup_30329794embedding/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding/embedding_lookup/30329794*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0Â
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding/embedding_lookup/30329794*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¤
addAddV2.embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.

_user_specified_namex
¿
Í
while_cond_30332366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_30332366___redundant_placeholder06
2while_while_cond_30332366___redundant_placeholder16
2while_while_cond_30332366___redundant_placeholder26
2while_while_cond_30332366___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
À
®
(__inference_model_layer_call_fn_30331077

inputs
unknown:.2
	unknown_0:	Ñ2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:2
	unknown_9:2

unknown_10:2

unknown_11:2 

unknown_12: 

unknown_13: 2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:	2¸

unknown_18:	.¸

unknown_19:	¸

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_30330153o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
®
Ð
-__inference_sequential_layer_call_fn_30332791

inputs
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_30329306s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
¿
Í
while_cond_30332510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_30332510___redundant_placeholder06
2while_while_cond_30332510___redundant_placeholder16
2while_while_cond_30332510___redundant_placeholder26
2while_while_cond_30332510___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
½
Õ
-__inference_sequential_layer_call_fn_30329390
dense_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_30329366s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%
_user_specified_namedense_input
òÂ
è
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30330572

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_query_add_readvariableop_resource:2T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:22F
4multi_head_attention_key_add_readvariableop_resource:2V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_value_add_readvariableop_resource:2a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:22O
Amulti_head_attention_attention_output_add_readvariableop_resource:2G
9layer_normalization_batchnorm_mul_readvariableop_resource:2C
5layer_normalization_batchnorm_readvariableop_resource:2D
2sequential_dense_tensordot_readvariableop_resource:2 >
0sequential_dense_biasadd_readvariableop_resource: F
4sequential_dense_1_tensordot_readvariableop_resource: 2@
2sequential_dense_1_biasadd_readvariableop_resource:2I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_1_batchnorm_readvariableop_resource:2
identity¢,layer_normalization/batchnorm/ReadVariableOp¢0layer_normalization/batchnorm/mul/ReadVariableOp¢.layer_normalization_1/batchnorm/ReadVariableOp¢2layer_normalization_1/batchnorm/mul/ReadVariableOp¢8multi_head_attention/attention_output/add/ReadVariableOp¢Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp¢+multi_head_attention/key/add/ReadVariableOp¢5multi_head_attention/key/einsum/Einsum/ReadVariableOp¢-multi_head_attention/query/add/ReadVariableOp¢7multi_head_attention/query/einsum/Einsum/ReadVariableOp¢-multi_head_attention/value/add/ReadVariableOp¢7multi_head_attention/value/einsum/Einsum/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢)sequential/dense/Tensordot/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢+sequential/dense_1/Tensordot/ReadVariableOp¼
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0×
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde 
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Å
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¼
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¢
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..ä
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdÒ
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abe¶
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0è
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout/dropout/MulMul-multi_head_attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2r
dropout/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
: 
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Â
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2e
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:µ
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.´
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ç
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75½
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¦
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Á
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2²
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0½
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2²
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:j
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¡
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: §
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : à
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¬
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¼
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2½
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¶
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¯
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. v
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.  
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0k
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       u
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ­
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : è
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:²
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¼
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ã
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2l
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¼
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0µ
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_1/dropout/MulMul#sequential/dense_1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2j
dropout_1/dropout/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:¤
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?È
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.º
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ø
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
I

A__inference_rnn_layer_call_and_return_conditional_losses_30330111

inputs;
(lstm_cell_matmul_readvariableop_resource:	2¸=
*lstm_cell_matmul_1_readvariableop_resource:	.¸8
)lstm_cell_biasadd_readvariableop_resource:	¸
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:.ÿÿÿÿÿÿÿÿÿ2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ._
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30330027*
condR
while_cond_30330026*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
¿'
÷

C__inference_model_layer_call_and_return_conditional_losses_30330153

inputs7
%token_and_position_embedding_30329802:.28
%token_and_position_embedding_30329804:	Ñ22
transformer_encoder_30329935:22.
transformer_encoder_30329937:22
transformer_encoder_30329939:22.
transformer_encoder_30329941:22
transformer_encoder_30329943:22.
transformer_encoder_30329945:22
transformer_encoder_30329947:22*
transformer_encoder_30329949:2*
transformer_encoder_30329951:2*
transformer_encoder_30329953:2.
transformer_encoder_30329955:2 *
transformer_encoder_30329957: .
transformer_encoder_30329959: 2*
transformer_encoder_30329961:2*
transformer_encoder_30329963:2*
transformer_encoder_30329965:2
rnn_30330112:	2¸
rnn_30330114:	.¸
rnn_30330116:	¸"
dense_2_30330131:..
dense_2_30330133:."
dense_3_30330147:.
dense_3_30330149:
identity¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢rnn/StatefulPartitionedCall¢4token_and_position_embedding/StatefulPartitionedCall¢+transformer_encoder/StatefulPartitionedCallÊ
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs%token_and_position_embedding_30329802%token_and_position_embedding_30329804*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_30329801
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_encoder_30329935transformer_encoder_30329937transformer_encoder_30329939transformer_encoder_30329941transformer_encoder_30329943transformer_encoder_30329945transformer_encoder_30329947transformer_encoder_30329949transformer_encoder_30329951transformer_encoder_30329953transformer_encoder_30329955transformer_encoder_30329957transformer_encoder_30329959transformer_encoder_30329961transformer_encoder_30329963transformer_encoder_30329965*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30329934 
rnn/StatefulPartitionedCallStatefulPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0rnn_30330112rnn_30330114rnn_30330116*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_layer_call_and_return_conditional_losses_30330111
dense_2/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_2_30330131dense_2_30330133*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_30330130
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_30330147dense_3_30330149*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_30330146w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^rnn/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
Ì
ü
E__inference_dense_1_layer_call_and_return_conditional_losses_30329299

inputs3
!tensordot_readvariableop_resource: 2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ. : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 
_user_specified_nameinputs
Â'
ø

C__inference_model_layer_call_and_return_conditional_losses_30330959
input_17
%token_and_position_embedding_30330903:.28
%token_and_position_embedding_30330905:	Ñ22
transformer_encoder_30330908:22.
transformer_encoder_30330910:22
transformer_encoder_30330912:22.
transformer_encoder_30330914:22
transformer_encoder_30330916:22.
transformer_encoder_30330918:22
transformer_encoder_30330920:22*
transformer_encoder_30330922:2*
transformer_encoder_30330924:2*
transformer_encoder_30330926:2.
transformer_encoder_30330928:2 *
transformer_encoder_30330930: .
transformer_encoder_30330932: 2*
transformer_encoder_30330934:2*
transformer_encoder_30330936:2*
transformer_encoder_30330938:2
rnn_30330941:	2¸
rnn_30330943:	.¸
rnn_30330945:	¸"
dense_2_30330948:..
dense_2_30330950:."
dense_3_30330953:.
dense_3_30330955:
identity¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢rnn/StatefulPartitionedCall¢4token_and_position_embedding/StatefulPartitionedCall¢+transformer_encoder/StatefulPartitionedCallË
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1%token_and_position_embedding_30330903%token_and_position_embedding_30330905*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_30329801
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_encoder_30330908transformer_encoder_30330910transformer_encoder_30330912transformer_encoder_30330914transformer_encoder_30330916transformer_encoder_30330918transformer_encoder_30330920transformer_encoder_30330922transformer_encoder_30330924transformer_encoder_30330926transformer_encoder_30330928transformer_encoder_30330930transformer_encoder_30330932transformer_encoder_30330934transformer_encoder_30330936transformer_encoder_30330938*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30330572 
rnn/StatefulPartitionedCallStatefulPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0rnn_30330941rnn_30330943rnn_30330945*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_layer_call_and_return_conditional_losses_30330383
dense_2/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_2_30330948dense_2_30330950*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_30330130
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_30330953dense_3_30330955*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_30330146w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^rnn/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_1
¢
ú
C__inference_dense_layer_call_and_return_conditional_losses_30333056

inputs3
!tensordot_readvariableop_resource:2 -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ä

*__inference_dense_2_layer_call_fn_30332748

inputs
unknown:..
	unknown_0:.
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_30330130o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
È

G__inference_lstm_cell_layer_call_and_return_conditional_losses_30333016

inputs
states_0
states_11
matmul_readvariableop_resource:	2¸3
 matmul_1_readvariableop_resource:	.¸.
biasadd_readvariableop_resource:	¸
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/1
È	
ö
E__inference_dense_3_layer_call_and_return_conditional_losses_30330146

inputs0
matmul_readvariableop_resource:.-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:.*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
ë´
è
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30329934

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_query_add_readvariableop_resource:2T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:22F
4multi_head_attention_key_add_readvariableop_resource:2V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_value_add_readvariableop_resource:2a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:22O
Amulti_head_attention_attention_output_add_readvariableop_resource:2G
9layer_normalization_batchnorm_mul_readvariableop_resource:2C
5layer_normalization_batchnorm_readvariableop_resource:2D
2sequential_dense_tensordot_readvariableop_resource:2 >
0sequential_dense_biasadd_readvariableop_resource: F
4sequential_dense_1_tensordot_readvariableop_resource: 2@
2sequential_dense_1_biasadd_readvariableop_resource:2I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_1_batchnorm_readvariableop_resource:2
identity¢,layer_normalization/batchnorm/ReadVariableOp¢0layer_normalization/batchnorm/mul/ReadVariableOp¢.layer_normalization_1/batchnorm/ReadVariableOp¢2layer_normalization_1/batchnorm/mul/ReadVariableOp¢8multi_head_attention/attention_output/add/ReadVariableOp¢Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp¢+multi_head_attention/key/add/ReadVariableOp¢5multi_head_attention/key/einsum/Einsum/ReadVariableOp¢-multi_head_attention/query/add/ReadVariableOp¢7multi_head_attention/query/einsum/Einsum/ReadVariableOp¢-multi_head_attention/value/add/ReadVariableOp¢7multi_head_attention/value/einsum/Einsum/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢)sequential/dense/Tensordot/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢+sequential/dense_1/Tensordot/ReadVariableOp¼
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0×
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde 
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Å
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¼
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¢
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..ä
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdÒ
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abe¶
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0è
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2e
addAddV2inputsdropout/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:µ
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.´
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ç
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75½
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¦
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Á
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2²
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0½
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2²
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:j
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¡
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: §
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : à
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¬
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¼
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2½
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¶
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¯
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. v
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.  
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0k
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       u
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ­
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : è
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:²
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¼
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ã
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2l
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¼
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0µ
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2y
dropout_1/IdentityIdentity#sequential/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.º
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ø
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
òÂ
è
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30332119

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_query_add_readvariableop_resource:2T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:22F
4multi_head_attention_key_add_readvariableop_resource:2V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_value_add_readvariableop_resource:2a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:22O
Amulti_head_attention_attention_output_add_readvariableop_resource:2G
9layer_normalization_batchnorm_mul_readvariableop_resource:2C
5layer_normalization_batchnorm_readvariableop_resource:2D
2sequential_dense_tensordot_readvariableop_resource:2 >
0sequential_dense_biasadd_readvariableop_resource: F
4sequential_dense_1_tensordot_readvariableop_resource: 2@
2sequential_dense_1_biasadd_readvariableop_resource:2I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_1_batchnorm_readvariableop_resource:2
identity¢,layer_normalization/batchnorm/ReadVariableOp¢0layer_normalization/batchnorm/mul/ReadVariableOp¢.layer_normalization_1/batchnorm/ReadVariableOp¢2layer_normalization_1/batchnorm/mul/ReadVariableOp¢8multi_head_attention/attention_output/add/ReadVariableOp¢Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp¢+multi_head_attention/key/add/ReadVariableOp¢5multi_head_attention/key/einsum/Einsum/ReadVariableOp¢-multi_head_attention/query/add/ReadVariableOp¢7multi_head_attention/query/einsum/Einsum/ReadVariableOp¢-multi_head_attention/value/add/ReadVariableOp¢7multi_head_attention/value/einsum/Einsum/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢)sequential/dense/Tensordot/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢+sequential/dense_1/Tensordot/ReadVariableOp¼
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0×
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde 
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Å
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¼
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¢
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..ä
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdÒ
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abe¶
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0è
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout/dropout/MulMul-multi_head_attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2r
dropout/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
: 
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Â
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2e
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:µ
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.´
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ç
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75½
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¦
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Á
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2²
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0½
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2²
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:j
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¡
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: §
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : à
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¬
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¼
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2½
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¶
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¯
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. v
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.  
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0k
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       u
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ­
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : è
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:²
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¼
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ã
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2l
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¼
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0µ
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_1/dropout/MulMul#sequential/dense_1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2j
dropout_1/dropout/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:¤
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?È
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.º
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ø
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
±
Ï.
!__inference__traced_save_30333370
file_prefix-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableopP
Lsavev2_token_and_position_embedding_embedding_embeddings_read_readvariableopR
Nsavev2_token_and_position_embedding_embedding_1_embeddings_read_readvariableopT
Psavev2_transformer_encoder_multi_head_attention_query_kernel_read_readvariableopR
Nsavev2_transformer_encoder_multi_head_attention_query_bias_read_readvariableopR
Nsavev2_transformer_encoder_multi_head_attention_key_kernel_read_readvariableopP
Lsavev2_transformer_encoder_multi_head_attention_key_bias_read_readvariableopT
Psavev2_transformer_encoder_multi_head_attention_value_kernel_read_readvariableopR
Nsavev2_transformer_encoder_multi_head_attention_value_bias_read_readvariableop_
[savev2_transformer_encoder_multi_head_attention_attention_output_kernel_read_readvariableop]
Ysavev2_transformer_encoder_multi_head_attention_attention_output_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableopL
Hsavev2_transformer_encoder_layer_normalization_gamma_read_readvariableopK
Gsavev2_transformer_encoder_layer_normalization_beta_read_readvariableopN
Jsavev2_transformer_encoder_layer_normalization_1_gamma_read_readvariableopM
Isavev2_transformer_encoder_layer_normalization_1_beta_read_readvariableop3
/savev2_rnn_lstm_cell_kernel_read_readvariableop=
9savev2_rnn_lstm_cell_recurrent_kernel_read_readvariableop1
-savev2_rnn_lstm_cell_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopW
Ssavev2_adam_token_and_position_embedding_embedding_embeddings_m_read_readvariableopY
Usavev2_adam_token_and_position_embedding_embedding_1_embeddings_m_read_readvariableop[
Wsavev2_adam_transformer_encoder_multi_head_attention_query_kernel_m_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_query_bias_m_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_key_kernel_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_multi_head_attention_key_bias_m_read_readvariableop[
Wsavev2_adam_transformer_encoder_multi_head_attention_value_kernel_m_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_value_bias_m_read_readvariableopf
bsavev2_adam_transformer_encoder_multi_head_attention_attention_output_kernel_m_read_readvariableopd
`savev2_adam_transformer_encoder_multi_head_attention_attention_output_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableopS
Osavev2_adam_transformer_encoder_layer_normalization_gamma_m_read_readvariableopR
Nsavev2_adam_transformer_encoder_layer_normalization_beta_m_read_readvariableopU
Qsavev2_adam_transformer_encoder_layer_normalization_1_gamma_m_read_readvariableopT
Psavev2_adam_transformer_encoder_layer_normalization_1_beta_m_read_readvariableop:
6savev2_adam_rnn_lstm_cell_kernel_m_read_readvariableopD
@savev2_adam_rnn_lstm_cell_recurrent_kernel_m_read_readvariableop8
4savev2_adam_rnn_lstm_cell_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopW
Ssavev2_adam_token_and_position_embedding_embedding_embeddings_v_read_readvariableopY
Usavev2_adam_token_and_position_embedding_embedding_1_embeddings_v_read_readvariableop[
Wsavev2_adam_transformer_encoder_multi_head_attention_query_kernel_v_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_query_bias_v_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_key_kernel_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_multi_head_attention_key_bias_v_read_readvariableop[
Wsavev2_adam_transformer_encoder_multi_head_attention_value_kernel_v_read_readvariableopY
Usavev2_adam_transformer_encoder_multi_head_attention_value_bias_v_read_readvariableopf
bsavev2_adam_transformer_encoder_multi_head_attention_attention_output_kernel_v_read_readvariableopd
`savev2_adam_transformer_encoder_multi_head_attention_attention_output_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableopS
Osavev2_adam_transformer_encoder_layer_normalization_gamma_v_read_readvariableopR
Nsavev2_adam_transformer_encoder_layer_normalization_beta_v_read_readvariableopU
Qsavev2_adam_transformer_encoder_layer_normalization_1_gamma_v_read_readvariableopT
Psavev2_adam_transformer_encoder_layer_normalization_1_beta_v_read_readvariableop:
6savev2_adam_rnn_lstm_cell_kernel_v_read_readvariableopD
@savev2_adam_rnn_lstm_cell_recurrent_kernel_v_read_readvariableop8
4savev2_adam_rnn_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ì(
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*õ'
valueë'Bè'UB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*¿
valueµB²UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B -
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableopLsavev2_token_and_position_embedding_embedding_embeddings_read_readvariableopNsavev2_token_and_position_embedding_embedding_1_embeddings_read_readvariableopPsavev2_transformer_encoder_multi_head_attention_query_kernel_read_readvariableopNsavev2_transformer_encoder_multi_head_attention_query_bias_read_readvariableopNsavev2_transformer_encoder_multi_head_attention_key_kernel_read_readvariableopLsavev2_transformer_encoder_multi_head_attention_key_bias_read_readvariableopPsavev2_transformer_encoder_multi_head_attention_value_kernel_read_readvariableopNsavev2_transformer_encoder_multi_head_attention_value_bias_read_readvariableop[savev2_transformer_encoder_multi_head_attention_attention_output_kernel_read_readvariableopYsavev2_transformer_encoder_multi_head_attention_attention_output_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableopHsavev2_transformer_encoder_layer_normalization_gamma_read_readvariableopGsavev2_transformer_encoder_layer_normalization_beta_read_readvariableopJsavev2_transformer_encoder_layer_normalization_1_gamma_read_readvariableopIsavev2_transformer_encoder_layer_normalization_1_beta_read_readvariableop/savev2_rnn_lstm_cell_kernel_read_readvariableop9savev2_rnn_lstm_cell_recurrent_kernel_read_readvariableop-savev2_rnn_lstm_cell_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableopSsavev2_adam_token_and_position_embedding_embedding_embeddings_m_read_readvariableopUsavev2_adam_token_and_position_embedding_embedding_1_embeddings_m_read_readvariableopWsavev2_adam_transformer_encoder_multi_head_attention_query_kernel_m_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_query_bias_m_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_key_kernel_m_read_readvariableopSsavev2_adam_transformer_encoder_multi_head_attention_key_bias_m_read_readvariableopWsavev2_adam_transformer_encoder_multi_head_attention_value_kernel_m_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_value_bias_m_read_readvariableopbsavev2_adam_transformer_encoder_multi_head_attention_attention_output_kernel_m_read_readvariableop`savev2_adam_transformer_encoder_multi_head_attention_attention_output_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableopOsavev2_adam_transformer_encoder_layer_normalization_gamma_m_read_readvariableopNsavev2_adam_transformer_encoder_layer_normalization_beta_m_read_readvariableopQsavev2_adam_transformer_encoder_layer_normalization_1_gamma_m_read_readvariableopPsavev2_adam_transformer_encoder_layer_normalization_1_beta_m_read_readvariableop6savev2_adam_rnn_lstm_cell_kernel_m_read_readvariableop@savev2_adam_rnn_lstm_cell_recurrent_kernel_m_read_readvariableop4savev2_adam_rnn_lstm_cell_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopSsavev2_adam_token_and_position_embedding_embedding_embeddings_v_read_readvariableopUsavev2_adam_token_and_position_embedding_embedding_1_embeddings_v_read_readvariableopWsavev2_adam_transformer_encoder_multi_head_attention_query_kernel_v_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_query_bias_v_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_key_kernel_v_read_readvariableopSsavev2_adam_transformer_encoder_multi_head_attention_key_bias_v_read_readvariableopWsavev2_adam_transformer_encoder_multi_head_attention_value_kernel_v_read_readvariableopUsavev2_adam_transformer_encoder_multi_head_attention_value_bias_v_read_readvariableopbsavev2_adam_transformer_encoder_multi_head_attention_attention_output_kernel_v_read_readvariableop`savev2_adam_transformer_encoder_multi_head_attention_attention_output_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopOsavev2_adam_transformer_encoder_layer_normalization_gamma_v_read_readvariableopNsavev2_adam_transformer_encoder_layer_normalization_beta_v_read_readvariableopQsavev2_adam_transformer_encoder_layer_normalization_1_gamma_v_read_readvariableopPsavev2_adam_transformer_encoder_layer_normalization_1_beta_v_read_readvariableop6savev2_adam_rnn_lstm_cell_kernel_v_read_readvariableop@savev2_adam_rnn_lstm_cell_recurrent_kernel_v_read_readvariableop4savev2_adam_rnn_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *c
dtypesY
W2U	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ý
_input_shapesË
È: :..:.:.::	Ñ2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸: : : : : : : : : :..:.:.::	Ñ2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸:..:.:.::	Ñ2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:..: 

_output_shapes
:.:$ 

_output_shapes

:.: 

_output_shapes
::%!

_output_shapes
:	Ñ2:$ 

_output_shapes

:.2:($
"
_output_shapes
:22:$ 

_output_shapes

:2:(	$
"
_output_shapes
:22:$
 

_output_shapes

:2:($
"
_output_shapes
:22:$ 

_output_shapes

:2:($
"
_output_shapes
:22: 

_output_shapes
:2:$ 

_output_shapes

:2 : 

_output_shapes
: :$ 

_output_shapes

: 2: 

_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2:%!

_output_shapes
:	2¸:%!

_output_shapes
:	.¸:!

_output_shapes	
:¸:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :$# 

_output_shapes

:..: $

_output_shapes
:.:$% 

_output_shapes

:.: &

_output_shapes
::%'!

_output_shapes
:	Ñ2:$( 

_output_shapes

:.2:()$
"
_output_shapes
:22:$* 

_output_shapes

:2:(+$
"
_output_shapes
:22:$, 

_output_shapes

:2:(-$
"
_output_shapes
:22:$. 

_output_shapes

:2:(/$
"
_output_shapes
:22: 0

_output_shapes
:2:$1 

_output_shapes

:2 : 2

_output_shapes
: :$3 

_output_shapes

: 2: 4

_output_shapes
:2: 5

_output_shapes
:2: 6

_output_shapes
:2: 7

_output_shapes
:2: 8

_output_shapes
:2:%9!

_output_shapes
:	2¸:%:!

_output_shapes
:	.¸:!;

_output_shapes	
:¸:$< 

_output_shapes

:..: =

_output_shapes
:.:$> 

_output_shapes

:.: ?

_output_shapes
::%@!

_output_shapes
:	Ñ2:$A 

_output_shapes

:.2:(B$
"
_output_shapes
:22:$C 

_output_shapes

:2:(D$
"
_output_shapes
:22:$E 

_output_shapes

:2:(F$
"
_output_shapes
:22:$G 

_output_shapes

:2:(H$
"
_output_shapes
:22: I

_output_shapes
:2:$J 

_output_shapes

:2 : K

_output_shapes
: :$L 

_output_shapes

: 2: M

_output_shapes
:2: N

_output_shapes
:2: O

_output_shapes
:2: P

_output_shapes
:2: Q

_output_shapes
:2:%R!

_output_shapes
:	2¸:%S!

_output_shapes
:	.¸:!T

_output_shapes	
:¸:U

_output_shapes
: 
Ê7
·
while_body_30332655
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	2¸E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	.¸@
1while_lstm_cell_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	2¸C
0while_lstm_cell_matmul_1_readvariableop_resource:	.¸>
/while_lstm_cell_biasadd_readvariableop_resource:	¸¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ê
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
Ä

*__inference_dense_3_layer_call_fn_30332768

inputs
unknown:.
	unknown_0:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_30330146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
I

A__inference_rnn_layer_call_and_return_conditional_losses_30330383

inputs;
(lstm_cell_matmul_readvariableop_resource:	2¸=
*lstm_cell_matmul_1_readvariableop_resource:	.¸8
)lstm_cell_biasadd_readvariableop_resource:	¸
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:.ÿÿÿÿÿÿÿÿÿ2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ._
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30330299*
condR
while_cond_30330298*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
¸C
÷

model_rnn_while_body_303291280
,model_rnn_while_model_rnn_while_loop_counter6
2model_rnn_while_model_rnn_while_maximum_iterations
model_rnn_while_placeholder!
model_rnn_while_placeholder_1!
model_rnn_while_placeholder_2!
model_rnn_while_placeholder_3/
+model_rnn_while_model_rnn_strided_slice_1_0k
gmodel_rnn_while_tensorarrayv2read_tensorlistgetitem_model_rnn_tensorarrayunstack_tensorlistfromtensor_0M
:model_rnn_while_lstm_cell_matmul_readvariableop_resource_0:	2¸O
<model_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	.¸J
;model_rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	¸
model_rnn_while_identity
model_rnn_while_identity_1
model_rnn_while_identity_2
model_rnn_while_identity_3
model_rnn_while_identity_4
model_rnn_while_identity_5-
)model_rnn_while_model_rnn_strided_slice_1i
emodel_rnn_while_tensorarrayv2read_tensorlistgetitem_model_rnn_tensorarrayunstack_tensorlistfromtensorK
8model_rnn_while_lstm_cell_matmul_readvariableop_resource:	2¸M
:model_rnn_while_lstm_cell_matmul_1_readvariableop_resource:	.¸H
9model_rnn_while_lstm_cell_biasadd_readvariableop_resource:	¸¢0model/rnn/while/lstm_cell/BiasAdd/ReadVariableOp¢/model/rnn/while/lstm_cell/MatMul/ReadVariableOp¢1model/rnn/while/lstm_cell/MatMul_1/ReadVariableOp
Amodel/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ø
3model/rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemgmodel_rnn_while_tensorarrayv2read_tensorlistgetitem_model_rnn_tensorarrayunstack_tensorlistfromtensor_0model_rnn_while_placeholderJmodel/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0«
/model/rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp:model_rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0Ò
 model/rnn/while/lstm_cell/MatMulMatMul:model/rnn/while/TensorArrayV2Read/TensorListGetItem:item:07model/rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¯
1model/rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp<model_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0¹
"model/rnn/while/lstm_cell/MatMul_1MatMulmodel_rnn_while_placeholder_29model/rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸³
model/rnn/while/lstm_cell/addAddV2*model/rnn/while/lstm_cell/MatMul:product:0,model/rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸©
0model/rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp;model_rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¼
!model/rnn/while/lstm_cell/BiasAddBiasAdd!model/rnn/while/lstm_cell/add:z:08model/rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸k
)model/rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
model/rnn/while/lstm_cell/splitSplit2model/rnn/while/lstm_cell/split/split_dim:output:0*model/rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
!model/rnn/while/lstm_cell/SigmoidSigmoid(model/rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#model/rnn/while/lstm_cell/Sigmoid_1Sigmoid(model/rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model/rnn/while/lstm_cell/mulMul'model/rnn/while/lstm_cell/Sigmoid_1:y:0model_rnn_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model/rnn/while/lstm_cell/TanhTanh(model/rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.£
model/rnn/while/lstm_cell/mul_1Mul%model/rnn/while/lstm_cell/Sigmoid:y:0"model/rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¢
model/rnn/while/lstm_cell/add_1AddV2!model/rnn/while/lstm_cell/mul:z:0#model/rnn/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#model/rnn/while/lstm_cell/Sigmoid_2Sigmoid(model/rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 model/rnn/while/lstm_cell/Tanh_1Tanh#model/rnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.§
model/rnn/while/lstm_cell/mul_2Mul'model/rnn/while/lstm_cell/Sigmoid_2:y:0$model/rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.|
:model/rnn/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
4model/rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmodel_rnn_while_placeholder_1Cmodel/rnn/while/TensorArrayV2Write/TensorListSetItem/index:output:0#model/rnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒW
model/rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :z
model/rnn/while/addAddV2model_rnn_while_placeholdermodel/rnn/while/add/y:output:0*
T0*
_output_shapes
: Y
model/rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
model/rnn/while/add_1AddV2,model_rnn_while_model_rnn_while_loop_counter model/rnn/while/add_1/y:output:0*
T0*
_output_shapes
: w
model/rnn/while/IdentityIdentitymodel/rnn/while/add_1:z:0^model/rnn/while/NoOp*
T0*
_output_shapes
: 
model/rnn/while/Identity_1Identity2model_rnn_while_model_rnn_while_maximum_iterations^model/rnn/while/NoOp*
T0*
_output_shapes
: w
model/rnn/while/Identity_2Identitymodel/rnn/while/add:z:0^model/rnn/while/NoOp*
T0*
_output_shapes
: ¤
model/rnn/while/Identity_3IdentityDmodel/rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model/rnn/while/NoOp*
T0*
_output_shapes
: 
model/rnn/while/Identity_4Identity#model/rnn/while/lstm_cell/mul_2:z:0^model/rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model/rnn/while/Identity_5Identity#model/rnn/while/lstm_cell/add_1:z:0^model/rnn/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ï
model/rnn/while/NoOpNoOp1^model/rnn/while/lstm_cell/BiasAdd/ReadVariableOp0^model/rnn/while/lstm_cell/MatMul/ReadVariableOp2^model/rnn/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "=
model_rnn_while_identity!model/rnn/while/Identity:output:0"A
model_rnn_while_identity_1#model/rnn/while/Identity_1:output:0"A
model_rnn_while_identity_2#model/rnn/while/Identity_2:output:0"A
model_rnn_while_identity_3#model/rnn/while/Identity_3:output:0"A
model_rnn_while_identity_4#model/rnn/while/Identity_4:output:0"A
model_rnn_while_identity_5#model/rnn/while/Identity_5:output:0"x
9model_rnn_while_lstm_cell_biasadd_readvariableop_resource;model_rnn_while_lstm_cell_biasadd_readvariableop_resource_0"z
:model_rnn_while_lstm_cell_matmul_1_readvariableop_resource<model_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"v
8model_rnn_while_lstm_cell_matmul_readvariableop_resource:model_rnn_while_lstm_cell_matmul_readvariableop_resource_0"X
)model_rnn_while_model_rnn_strided_slice_1+model_rnn_while_model_rnn_strided_slice_1_0"Ð
emodel_rnn_while_tensorarrayv2read_tensorlistgetitem_model_rnn_tensorarrayunstack_tensorlistfromtensorgmodel_rnn_while_tensorarrayv2read_tensorlistgetitem_model_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2d
0model/rnn/while/lstm_cell/BiasAdd/ReadVariableOp0model/rnn/while/lstm_cell/BiasAdd/ReadVariableOp2b
/model/rnn/while/lstm_cell/MatMul/ReadVariableOp/model/rnn/while/lstm_cell/MatMul/ReadVariableOp2f
1model/rnn/while/lstm_cell/MatMul_1/ReadVariableOp1model/rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
¶ý
µ
#__inference__wrapped_model_30329225
input_1Z
Hmodel_token_and_position_embedding_embedding_1_embedding_lookup_30328936:.2Y
Fmodel_token_and_position_embedding_embedding_embedding_lookup_30328942:	Ñ2p
Zmodel_transformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:22b
Pmodel_transformer_encoder_multi_head_attention_query_add_readvariableop_resource:2n
Xmodel_transformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:22`
Nmodel_transformer_encoder_multi_head_attention_key_add_readvariableop_resource:2p
Zmodel_transformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:22b
Pmodel_transformer_encoder_multi_head_attention_value_add_readvariableop_resource:2{
emodel_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:22i
[model_transformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource:2a
Smodel_transformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource:2]
Omodel_transformer_encoder_layer_normalization_batchnorm_readvariableop_resource:2^
Lmodel_transformer_encoder_sequential_dense_tensordot_readvariableop_resource:2 X
Jmodel_transformer_encoder_sequential_dense_biasadd_readvariableop_resource: `
Nmodel_transformer_encoder_sequential_dense_1_tensordot_readvariableop_resource: 2Z
Lmodel_transformer_encoder_sequential_dense_1_biasadd_readvariableop_resource:2c
Umodel_transformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:2_
Qmodel_transformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource:2E
2model_rnn_lstm_cell_matmul_readvariableop_resource:	2¸G
4model_rnn_lstm_cell_matmul_1_readvariableop_resource:	.¸B
3model_rnn_lstm_cell_biasadd_readvariableop_resource:	¸>
,model_dense_2_matmul_readvariableop_resource:..;
-model_dense_2_biasadd_readvariableop_resource:.>
,model_dense_3_matmul_readvariableop_resource:.;
-model_dense_3_biasadd_readvariableop_resource:
identity¢$model/dense_2/BiasAdd/ReadVariableOp¢#model/dense_2/MatMul/ReadVariableOp¢$model/dense_3/BiasAdd/ReadVariableOp¢#model/dense_3/MatMul/ReadVariableOp¢*model/rnn/lstm_cell/BiasAdd/ReadVariableOp¢)model/rnn/lstm_cell/MatMul/ReadVariableOp¢+model/rnn/lstm_cell/MatMul_1/ReadVariableOp¢model/rnn/while¢=model/token_and_position_embedding/embedding/embedding_lookup¢?model/token_and_position_embedding/embedding_1/embedding_lookup¢Fmodel/transformer_encoder/layer_normalization/batchnorm/ReadVariableOp¢Jmodel/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp¢Hmodel/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp¢Lmodel/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp¢Rmodel/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp¢\model/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp¢Emodel/transformer_encoder/multi_head_attention/key/add/ReadVariableOp¢Omodel/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp¢Gmodel/transformer_encoder/multi_head_attention/query/add/ReadVariableOp¢Qmodel/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp¢Gmodel/transformer_encoder/multi_head_attention/value/add/ReadVariableOp¢Qmodel/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp¢Amodel/transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp¢Cmodel/transformer_encoder/sequential/dense/Tensordot/ReadVariableOp¢Cmodel/transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp¢Emodel/transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp_
(model/token_and_position_embedding/ShapeShapeinput_1*
T0*
_output_shapes
:
6model/token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
8model/token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
8model/token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0model/token_and_position_embedding/strided_sliceStridedSlice1model/token_and_position_embedding/Shape:output:0?model/token_and_position_embedding/strided_slice/stack:output:0Amodel/token_and_position_embedding/strided_slice/stack_1:output:0Amodel/token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.model/token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.model/token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ú
(model/token_and_position_embedding/rangeRange7model/token_and_position_embedding/range/start:output:09model/token_and_position_embedding/strided_slice:output:07model/token_and_position_embedding/range/delta:output:0*
_output_shapes
:.è
?model/token_and_position_embedding/embedding_1/embedding_lookupResourceGatherHmodel_token_and_position_embedding_embedding_1_embedding_lookup_303289361model/token_and_position_embedding/range:output:0*
Tindices0*[
_classQ
OMloc:@model/token_and_position_embedding/embedding_1/embedding_lookup/30328936*
_output_shapes

:.2*
dtype0¤
Hmodel/token_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityHmodel/token_and_position_embedding/embedding_1/embedding_lookup:output:0*
T0*[
_classQ
OMloc:@model/token_and_position_embedding/embedding_1/embedding_lookup/30328936*
_output_shapes

:.2Ò
Jmodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityQmodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2
1model/token_and_position_embedding/embedding/CastCastinput_1*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ó
=model/token_and_position_embedding/embedding/embedding_lookupResourceGatherFmodel_token_and_position_embedding_embedding_embedding_lookup_303289425model/token_and_position_embedding/embedding/Cast:y:0*
Tindices0*Y
_classO
MKloc:@model/token_and_position_embedding/embedding/embedding_lookup/30328942*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0«
Fmodel/token_and_position_embedding/embedding/embedding_lookup/IdentityIdentityFmodel/token_and_position_embedding/embedding/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@model/token_and_position_embedding/embedding/embedding_lookup/30328942*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Û
Hmodel/token_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityOmodel/token_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
&model/token_and_position_embedding/addAddV2Qmodel/token_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Smodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ð
Qmodel/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_transformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0³
Bmodel/transformer_encoder/multi_head_attention/query/einsum/EinsumEinsum*model/token_and_position_embedding/add:z:0Ymodel/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeØ
Gmodel/transformer_encoder/multi_head_attention/query/add/ReadVariableOpReadVariableOpPmodel_transformer_encoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
8model/transformer_encoder/multi_head_attention/query/addAddV2Kmodel/transformer_encoder/multi_head_attention/query/einsum/Einsum:output:0Omodel/transformer_encoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ì
Omodel/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_transformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¯
@model/transformer_encoder/multi_head_attention/key/einsum/EinsumEinsum*model/token_and_position_embedding/add:z:0Wmodel/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÔ
Emodel/transformer_encoder/multi_head_attention/key/add/ReadVariableOpReadVariableOpNmodel_transformer_encoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6model/transformer_encoder/multi_head_attention/key/addAddV2Imodel/transformer_encoder/multi_head_attention/key/einsum/Einsum:output:0Mmodel/transformer_encoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ð
Qmodel/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_transformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0³
Bmodel/transformer_encoder/multi_head_attention/value/einsum/EinsumEinsum*model/token_and_position_embedding/add:z:0Ymodel/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeØ
Gmodel/transformer_encoder/multi_head_attention/value/add/ReadVariableOpReadVariableOpPmodel_transformer_encoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
8model/transformer_encoder/multi_head_attention/value/addAddV2Kmodel/transformer_encoder/multi_head_attention/value/einsum/Einsum:output:0Omodel/transformer_encoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2y
4model/transformer_encoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ð
2model/transformer_encoder/multi_head_attention/MulMul<model/transformer_encoder/multi_head_attention/query/add:z:0=model/transformer_encoder/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
<model/transformer_encoder/multi_head_attention/einsum/EinsumEinsum:model/transformer_encoder/multi_head_attention/key/add:z:06model/transformer_encoder/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbeÊ
>model/transformer_encoder/multi_head_attention/softmax/SoftmaxSoftmaxEmodel/transformer_encoder/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..Ï
?model/transformer_encoder/multi_head_attention/dropout/IdentityIdentityHmodel/transformer_encoder/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..²
>model/transformer_encoder/multi_head_attention/einsum_1/EinsumEinsumHmodel/transformer_encoder/multi_head_attention/dropout/Identity:output:0<model/transformer_encoder/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcd
\model/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpemodel_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0â
Mmodel/transformer_encoder/multi_head_attention/attention_output/einsum/EinsumEinsumGmodel/transformer_encoder/multi_head_attention/einsum_1/Einsum:output:0dmodel/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeê
Rmodel/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOp[model_transformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0¶
Cmodel/transformer_encoder/multi_head_attention/attention_output/addAddV2Vmodel/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum:output:0Zmodel/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2µ
*model/transformer_encoder/dropout/IdentityIdentityGmodel/transformer_encoder/multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2½
model/transformer_encoder/addAddV2*model/token_and_position_embedding/add:z:03model/transformer_encoder/dropout/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Lmodel/transformer_encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
:model/transformer_encoder/layer_normalization/moments/meanMean!model/transformer_encoder/add:z:0Umodel/transformer_encoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Í
Bmodel/transformer_encoder/layer_normalization/moments/StopGradientStopGradientCmodel/transformer_encoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Gmodel/transformer_encoder/layer_normalization/moments/SquaredDifferenceSquaredDifference!model/transformer_encoder/add:z:0Kmodel/transformer_encoder/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Pmodel/transformer_encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:µ
>model/transformer_encoder/layer_normalization/moments/varianceMeanKmodel/transformer_encoder/layer_normalization/moments/SquaredDifference:z:0Ymodel/transformer_encoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
=model/transformer_encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
;model/transformer_encoder/layer_normalization/batchnorm/addAddV2Gmodel/transformer_encoder/layer_normalization/moments/variance:output:0Fmodel/transformer_encoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.½
=model/transformer_encoder/layer_normalization/batchnorm/RsqrtRsqrt?model/transformer_encoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ú
Jmodel/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpSmodel_transformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
;model/transformer_encoder/layer_normalization/batchnorm/mulMulAmodel/transformer_encoder/layer_normalization/batchnorm/Rsqrt:y:0Rmodel/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Þ
=model/transformer_encoder/layer_normalization/batchnorm/mul_1Mul!model/transformer_encoder/add:z:0?model/transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
=model/transformer_encoder/layer_normalization/batchnorm/mul_2MulCmodel/transformer_encoder/layer_normalization/moments/mean:output:0?model/transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ò
Fmodel/transformer_encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpOmodel_transformer_encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
;model/transformer_encoder/layer_normalization/batchnorm/subSubNmodel/transformer_encoder/layer_normalization/batchnorm/ReadVariableOp:value:0Amodel/transformer_encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
=model/transformer_encoder/layer_normalization/batchnorm/add_1AddV2Amodel/transformer_encoder/layer_normalization/batchnorm/mul_1:z:0?model/transformer_encoder/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ð
Cmodel/transformer_encoder/sequential/dense/Tensordot/ReadVariableOpReadVariableOpLmodel_transformer_encoder_sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
9model/transformer_encoder/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9model/transformer_encoder/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       «
:model/transformer_encoder/sequential/dense/Tensordot/ShapeShapeAmodel/transformer_encoder/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Bmodel/transformer_encoder/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=model/transformer_encoder/sequential/dense/Tensordot/GatherV2GatherV2Cmodel/transformer_encoder/sequential/dense/Tensordot/Shape:output:0Bmodel/transformer_encoder/sequential/dense/Tensordot/free:output:0Kmodel/transformer_encoder/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dmodel/transformer_encoder/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?model/transformer_encoder/sequential/dense/Tensordot/GatherV2_1GatherV2Cmodel/transformer_encoder/sequential/dense/Tensordot/Shape:output:0Bmodel/transformer_encoder/sequential/dense/Tensordot/axes:output:0Mmodel/transformer_encoder/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:model/transformer_encoder/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9model/transformer_encoder/sequential/dense/Tensordot/ProdProdFmodel/transformer_encoder/sequential/dense/Tensordot/GatherV2:output:0Cmodel/transformer_encoder/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<model/transformer_encoder/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;model/transformer_encoder/sequential/dense/Tensordot/Prod_1ProdHmodel/transformer_encoder/sequential/dense/Tensordot/GatherV2_1:output:0Emodel/transformer_encoder/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@model/transformer_encoder/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;model/transformer_encoder/sequential/dense/Tensordot/concatConcatV2Bmodel/transformer_encoder/sequential/dense/Tensordot/free:output:0Bmodel/transformer_encoder/sequential/dense/Tensordot/axes:output:0Imodel/transformer_encoder/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:model/transformer_encoder/sequential/dense/Tensordot/stackPackBmodel/transformer_encoder/sequential/dense/Tensordot/Prod:output:0Dmodel/transformer_encoder/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>model/transformer_encoder/sequential/dense/Tensordot/transpose	TransposeAmodel/transformer_encoder/layer_normalization/batchnorm/add_1:z:0Dmodel/transformer_encoder/sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
<model/transformer_encoder/sequential/dense/Tensordot/ReshapeReshapeBmodel/transformer_encoder/sequential/dense/Tensordot/transpose:y:0Cmodel/transformer_encoder/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;model/transformer_encoder/sequential/dense/Tensordot/MatMulMatMulEmodel/transformer_encoder/sequential/dense/Tensordot/Reshape:output:0Kmodel/transformer_encoder/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
<model/transformer_encoder/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Bmodel/transformer_encoder/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=model/transformer_encoder/sequential/dense/Tensordot/concat_1ConcatV2Fmodel/transformer_encoder/sequential/dense/Tensordot/GatherV2:output:0Emodel/transformer_encoder/sequential/dense/Tensordot/Const_2:output:0Kmodel/transformer_encoder/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4model/transformer_encoder/sequential/dense/TensordotReshapeEmodel/transformer_encoder/sequential/dense/Tensordot/MatMul:product:0Fmodel/transformer_encoder/sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. È
Amodel/transformer_encoder/sequential/dense/BiasAdd/ReadVariableOpReadVariableOpJmodel_transformer_encoder_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ý
2model/transformer_encoder/sequential/dense/BiasAddBiasAdd=model/transformer_encoder/sequential/dense/Tensordot:output:0Imodel/transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ª
/model/transformer_encoder/sequential/dense/ReluRelu;model/transformer_encoder/sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ô
Emodel/transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOpReadVariableOpNmodel_transformer_encoder_sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
;model/transformer_encoder/sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
;model/transformer_encoder/sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
<model/transformer_encoder/sequential/dense_1/Tensordot/ShapeShape=model/transformer_encoder/sequential/dense/Relu:activations:0*
T0*
_output_shapes
:
Dmodel/transformer_encoder/sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
?model/transformer_encoder/sequential/dense_1/Tensordot/GatherV2GatherV2Emodel/transformer_encoder/sequential/dense_1/Tensordot/Shape:output:0Dmodel/transformer_encoder/sequential/dense_1/Tensordot/free:output:0Mmodel/transformer_encoder/sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Fmodel/transformer_encoder/sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
Amodel/transformer_encoder/sequential/dense_1/Tensordot/GatherV2_1GatherV2Emodel/transformer_encoder/sequential/dense_1/Tensordot/Shape:output:0Dmodel/transformer_encoder/sequential/dense_1/Tensordot/axes:output:0Omodel/transformer_encoder/sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
<model/transformer_encoder/sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: õ
;model/transformer_encoder/sequential/dense_1/Tensordot/ProdProdHmodel/transformer_encoder/sequential/dense_1/Tensordot/GatherV2:output:0Emodel/transformer_encoder/sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 
>model/transformer_encoder/sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: û
=model/transformer_encoder/sequential/dense_1/Tensordot/Prod_1ProdJmodel/transformer_encoder/sequential/dense_1/Tensordot/GatherV2_1:output:0Gmodel/transformer_encoder/sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Bmodel/transformer_encoder/sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
=model/transformer_encoder/sequential/dense_1/Tensordot/concatConcatV2Dmodel/transformer_encoder/sequential/dense_1/Tensordot/free:output:0Dmodel/transformer_encoder/sequential/dense_1/Tensordot/axes:output:0Kmodel/transformer_encoder/sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
<model/transformer_encoder/sequential/dense_1/Tensordot/stackPackDmodel/transformer_encoder/sequential/dense_1/Tensordot/Prod:output:0Fmodel/transformer_encoder/sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
@model/transformer_encoder/sequential/dense_1/Tensordot/transpose	Transpose=model/transformer_encoder/sequential/dense/Relu:activations:0Fmodel/transformer_encoder/sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
>model/transformer_encoder/sequential/dense_1/Tensordot/ReshapeReshapeDmodel/transformer_encoder/sequential/dense_1/Tensordot/transpose:y:0Emodel/transformer_encoder/sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
=model/transformer_encoder/sequential/dense_1/Tensordot/MatMulMatMulGmodel/transformer_encoder/sequential/dense_1/Tensordot/Reshape:output:0Mmodel/transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
>model/transformer_encoder/sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Dmodel/transformer_encoder/sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
?model/transformer_encoder/sequential/dense_1/Tensordot/concat_1ConcatV2Hmodel/transformer_encoder/sequential/dense_1/Tensordot/GatherV2:output:0Gmodel/transformer_encoder/sequential/dense_1/Tensordot/Const_2:output:0Mmodel/transformer_encoder/sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
6model/transformer_encoder/sequential/dense_1/TensordotReshapeGmodel/transformer_encoder/sequential/dense_1/Tensordot/MatMul:product:0Hmodel/transformer_encoder/sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ì
Cmodel/transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOpLmodel_transformer_encoder_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
4model/transformer_encoder/sequential/dense_1/BiasAddBiasAdd?model/transformer_encoder/sequential/dense_1/Tensordot:output:0Kmodel/transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2­
,model/transformer_encoder/dropout_1/IdentityIdentity=model/transformer_encoder/sequential/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ø
model/transformer_encoder/add_1AddV2Amodel/transformer_encoder/layer_normalization/batchnorm/add_1:z:05model/transformer_encoder/dropout_1/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Nmodel/transformer_encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
<model/transformer_encoder/layer_normalization_1/moments/meanMean#model/transformer_encoder/add_1:z:0Wmodel/transformer_encoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Ñ
Dmodel/transformer_encoder/layer_normalization_1/moments/StopGradientStopGradientEmodel/transformer_encoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Imodel/transformer_encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifference#model/transformer_encoder/add_1:z:0Mmodel/transformer_encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Rmodel/transformer_encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
@model/transformer_encoder/layer_normalization_1/moments/varianceMeanMmodel/transformer_encoder/layer_normalization_1/moments/SquaredDifference:z:0[model/transformer_encoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
?model/transformer_encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
=model/transformer_encoder/layer_normalization_1/batchnorm/addAddV2Imodel/transformer_encoder/layer_normalization_1/moments/variance:output:0Hmodel/transformer_encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Á
?model/transformer_encoder/layer_normalization_1/batchnorm/RsqrtRsqrtAmodel/transformer_encoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Þ
Lmodel/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpUmodel_transformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
=model/transformer_encoder/layer_normalization_1/batchnorm/mulMulCmodel/transformer_encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Tmodel/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ä
?model/transformer_encoder/layer_normalization_1/batchnorm/mul_1Mul#model/transformer_encoder/add_1:z:0Amodel/transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
?model/transformer_encoder/layer_normalization_1/batchnorm/mul_2MulEmodel/transformer_encoder/layer_normalization_1/moments/mean:output:0Amodel/transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ö
Hmodel/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpQmodel_transformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
=model/transformer_encoder/layer_normalization_1/batchnorm/subSubPmodel/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0Cmodel/transformer_encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
?model/transformer_encoder/layer_normalization_1/batchnorm/add_1AddV2Cmodel/transformer_encoder/layer_normalization_1/batchnorm/mul_1:z:0Amodel/transformer_encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
model/rnn/ShapeShapeCmodel/transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:g
model/rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
model/rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
model/rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model/rnn/strided_sliceStridedSlicemodel/rnn/Shape:output:0&model/rnn/strided_slice/stack:output:0(model/rnn/strided_slice/stack_1:output:0(model/rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
model/rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
model/rnn/zeros/packedPack model/rnn/strided_slice:output:0!model/rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Z
model/rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model/rnn/zerosFillmodel/rnn/zeros/packed:output:0model/rnn/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.\
model/rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
model/rnn/zeros_1/packedPack model/rnn/strided_slice:output:0#model/rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:\
model/rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model/rnn/zeros_1Fill!model/rnn/zeros_1/packed:output:0 model/rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.m
model/rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¾
model/rnn/transpose	TransposeCmodel/transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0!model/rnn/transpose/perm:output:0*
T0*+
_output_shapes
:.ÿÿÿÿÿÿÿÿÿ2X
model/rnn/Shape_1Shapemodel/rnn/transpose:y:0*
T0*
_output_shapes
:i
model/rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model/rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model/rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model/rnn/strided_slice_1StridedSlicemodel/rnn/Shape_1:output:0(model/rnn/strided_slice_1/stack:output:0*model/rnn/strided_slice_1/stack_1:output:0*model/rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
%model/rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÒ
model/rnn/TensorArrayV2TensorListReserve.model/rnn/TensorArrayV2/element_shape:output:0"model/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
?model/rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   þ
1model/rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel/rnn/transpose:y:0Hmodel/rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒi
model/rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model/rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model/rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model/rnn/strided_slice_2StridedSlicemodel/rnn/transpose:y:0(model/rnn/strided_slice_2/stack:output:0*model/rnn/strided_slice_2/stack_1:output:0*model/rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
)model/rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp2model_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0®
model/rnn/lstm_cell/MatMulMatMul"model/rnn/strided_slice_2:output:01model/rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¡
+model/rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp4model_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0¨
model/rnn/lstm_cell/MatMul_1MatMulmodel/rnn/zeros:output:03model/rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¡
model/rnn/lstm_cell/addAddV2$model/rnn/lstm_cell/MatMul:product:0&model/rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
*model/rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp3model_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0ª
model/rnn/lstm_cell/BiasAddBiasAddmodel/rnn/lstm_cell/add:z:02model/rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
#model/rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
model/rnn/lstm_cell/splitSplit,model/rnn/lstm_cell/split/split_dim:output:0$model/rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split|
model/rnn/lstm_cell/SigmoidSigmoid"model/rnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
model/rnn/lstm_cell/Sigmoid_1Sigmoid"model/rnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model/rnn/lstm_cell/mulMul!model/rnn/lstm_cell/Sigmoid_1:y:0model/rnn/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
model/rnn/lstm_cell/TanhTanh"model/rnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model/rnn/lstm_cell/mul_1Mulmodel/rnn/lstm_cell/Sigmoid:y:0model/rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model/rnn/lstm_cell/add_1AddV2model/rnn/lstm_cell/mul:z:0model/rnn/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
model/rnn/lstm_cell/Sigmoid_2Sigmoid"model/rnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.s
model/rnn/lstm_cell/Tanh_1Tanhmodel/rnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model/rnn/lstm_cell/mul_2Mul!model/rnn/lstm_cell/Sigmoid_2:y:0model/rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
'model/rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   h
&model/rnn/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ã
model/rnn/TensorArrayV2_1TensorListReserve0model/rnn/TensorArrayV2_1/element_shape:output:0/model/rnn/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒP
model/rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : m
"model/rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ^
model/rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
model/rnn/whileWhile%model/rnn/while/loop_counter:output:0+model/rnn/while/maximum_iterations:output:0model/rnn/time:output:0"model/rnn/TensorArrayV2_1:handle:0model/rnn/zeros:output:0model/rnn/zeros_1:output:0"model/rnn/strided_slice_1:output:0Amodel/rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:02model_rnn_lstm_cell_matmul_readvariableop_resource4model_rnn_lstm_cell_matmul_1_readvariableop_resource3model_rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *)
body!R
model_rnn_while_body_30329128*)
cond!R
model_rnn_while_cond_30329127*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
:model/rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ô
,model/rnn/TensorArrayV2Stack/TensorListStackTensorListStackmodel/rnn/while:output:3Cmodel/rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsr
model/rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿk
!model/rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: k
!model/rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
model/rnn/strided_slice_3StridedSlice5model/rnn/TensorArrayV2Stack/TensorListStack:tensor:0(model/rnn/strided_slice_3/stack:output:0*model/rnn/strided_slice_3/stack_1:output:0*model/rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_masko
model/rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ´
model/rnn/transpose_1	Transpose5model/rnn/TensorArrayV2Stack/TensorListStack:tensor:0#model/rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0¡
model/dense_2/MatMulMatMul"model/rnn/strided_slice_3:output:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0 
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.l
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
model/dense_3/MatMulMatMul model/dense_2/Relu:activations:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
IdentityIdentitymodel/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
NoOpNoOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp+^model/rnn/lstm_cell/BiasAdd/ReadVariableOp*^model/rnn/lstm_cell/MatMul/ReadVariableOp,^model/rnn/lstm_cell/MatMul_1/ReadVariableOp^model/rnn/while>^model/token_and_position_embedding/embedding/embedding_lookup@^model/token_and_position_embedding/embedding_1/embedding_lookupG^model/transformer_encoder/layer_normalization/batchnorm/ReadVariableOpK^model/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpI^model/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpM^model/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpS^model/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp]^model/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpF^model/transformer_encoder/multi_head_attention/key/add/ReadVariableOpP^model/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpH^model/transformer_encoder/multi_head_attention/query/add/ReadVariableOpR^model/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpH^model/transformer_encoder/multi_head_attention/value/add/ReadVariableOpR^model/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpB^model/transformer_encoder/sequential/dense/BiasAdd/ReadVariableOpD^model/transformer_encoder/sequential/dense/Tensordot/ReadVariableOpD^model/transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOpF^model/transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2X
*model/rnn/lstm_cell/BiasAdd/ReadVariableOp*model/rnn/lstm_cell/BiasAdd/ReadVariableOp2V
)model/rnn/lstm_cell/MatMul/ReadVariableOp)model/rnn/lstm_cell/MatMul/ReadVariableOp2Z
+model/rnn/lstm_cell/MatMul_1/ReadVariableOp+model/rnn/lstm_cell/MatMul_1/ReadVariableOp2"
model/rnn/whilemodel/rnn/while2~
=model/token_and_position_embedding/embedding/embedding_lookup=model/token_and_position_embedding/embedding/embedding_lookup2
?model/token_and_position_embedding/embedding_1/embedding_lookup?model/token_and_position_embedding/embedding_1/embedding_lookup2
Fmodel/transformer_encoder/layer_normalization/batchnorm/ReadVariableOpFmodel/transformer_encoder/layer_normalization/batchnorm/ReadVariableOp2
Jmodel/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpJmodel/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp2
Hmodel/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpHmodel/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp2
Lmodel/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpLmodel/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2¨
Rmodel/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOpRmodel/transformer_encoder/multi_head_attention/attention_output/add/ReadVariableOp2¼
\model/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp\model/transformer_encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2
Emodel/transformer_encoder/multi_head_attention/key/add/ReadVariableOpEmodel/transformer_encoder/multi_head_attention/key/add/ReadVariableOp2¢
Omodel/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpOmodel/transformer_encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2
Gmodel/transformer_encoder/multi_head_attention/query/add/ReadVariableOpGmodel/transformer_encoder/multi_head_attention/query/add/ReadVariableOp2¦
Qmodel/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpQmodel/transformer_encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2
Gmodel/transformer_encoder/multi_head_attention/value/add/ReadVariableOpGmodel/transformer_encoder/multi_head_attention/value/add/ReadVariableOp2¦
Qmodel/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpQmodel/transformer_encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp2
Amodel/transformer_encoder/sequential/dense/BiasAdd/ReadVariableOpAmodel/transformer_encoder/sequential/dense/BiasAdd/ReadVariableOp2
Cmodel/transformer_encoder/sequential/dense/Tensordot/ReadVariableOpCmodel/transformer_encoder/sequential/dense/Tensordot/ReadVariableOp2
Cmodel/transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOpCmodel/transformer_encoder/sequential/dense_1/BiasAdd/ReadVariableOp2
Emodel/transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOpEmodel/transformer_encoder/sequential/dense_1/Tensordot/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_1

µ
&__inference_rnn_layer_call_fn_30332141
inputs_0
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_layer_call_and_return_conditional_losses_30329761o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Â'
ø

C__inference_model_layer_call_and_return_conditional_losses_30330900
input_17
%token_and_position_embedding_30330844:.28
%token_and_position_embedding_30330846:	Ñ22
transformer_encoder_30330849:22.
transformer_encoder_30330851:22
transformer_encoder_30330853:22.
transformer_encoder_30330855:22
transformer_encoder_30330857:22.
transformer_encoder_30330859:22
transformer_encoder_30330861:22*
transformer_encoder_30330863:2*
transformer_encoder_30330865:2*
transformer_encoder_30330867:2.
transformer_encoder_30330869:2 *
transformer_encoder_30330871: .
transformer_encoder_30330873: 2*
transformer_encoder_30330875:2*
transformer_encoder_30330877:2*
transformer_encoder_30330879:2
rnn_30330882:	2¸
rnn_30330884:	.¸
rnn_30330886:	¸"
dense_2_30330889:..
dense_2_30330891:."
dense_3_30330894:.
dense_3_30330896:
identity¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢rnn/StatefulPartitionedCall¢4token_and_position_embedding/StatefulPartitionedCall¢+transformer_encoder/StatefulPartitionedCallË
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1%token_and_position_embedding_30330844%token_and_position_embedding_30330846*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_30329801
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_encoder_30330849transformer_encoder_30330851transformer_encoder_30330853transformer_encoder_30330855transformer_encoder_30330857transformer_encoder_30330859transformer_encoder_30330861transformer_encoder_30330863transformer_encoder_30330865transformer_encoder_30330867transformer_encoder_30330869transformer_encoder_30330871transformer_encoder_30330873transformer_encoder_30330875transformer_encoder_30330877transformer_encoder_30330879*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30329934 
rnn/StatefulPartitionedCallStatefulPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0rnn_30330882rnn_30330884rnn_30330886*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_layer_call_and_return_conditional_losses_30330111
dense_2/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_2_30330889dense_2_30330891*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_30330130
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_30330894dense_3_30330896*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_3_layer_call_and_return_conditional_losses_30330146w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^rnn/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_1
Ë=
Ï
H__inference_sequential_layer_call_and_return_conditional_losses_30332918

inputs9
'dense_tensordot_readvariableop_resource:2 3
%dense_biasadd_readvariableop_resource: ;
)dense_1_tensordot_readvariableop_resource: 25
'dense_1_biasadd_readvariableop_resource:2
identity¢dense/BiasAdd/ReadVariableOp¢dense/Tensordot/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢ dense_1/Tensordot/ReadVariableOp
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       K
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ´
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: _
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. `

dense/ReluReludense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¢
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2k
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ê
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
ªI

A__inference_rnn_layer_call_and_return_conditional_losses_30332451
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	2¸=
*lstm_cell_matmul_1_readvariableop_resource:	.¸8
)lstm_cell_biasadd_readvariableop_resource:	¸
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ._
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30332367*
condR
while_cond_30332366*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0


ö
E__inference_dense_2_layer_call_and_return_conditional_losses_30330130

inputs0
matmul_readvariableop_resource:..-
biasadd_readvariableop_resource:.
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:..*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
Ê7
·
while_body_30332223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	2¸E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	.¸@
1while_lstm_cell_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	2¸C
0while_lstm_cell_matmul_1_readvariableop_resource:	.¸>
/while_lstm_cell_biasadd_readvariableop_resource:	¸¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ê
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
À

G__inference_lstm_cell_layer_call_and_return_conditional_losses_30329632

inputs

states
states_11
matmul_readvariableop_resource:	2¸3
 matmul_1_readvariableop_resource:	.¸.
biasadd_readvariableop_resource:	¸
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_namestates
À

G__inference_lstm_cell_layer_call_and_return_conditional_losses_30329485

inputs

states
states_11
matmul_readvariableop_resource:	2¸3
 matmul_1_readvariableop_resource:	.¸.
biasadd_readvariableop_resource:	¸
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_namestates
Ü#
Ü
while_body_30329692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_30329716_0:	2¸-
while_lstm_cell_30329718_0:	.¸)
while_lstm_cell_30329720_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_30329716:	2¸+
while_lstm_cell_30329718:	.¸'
while_lstm_cell_30329720:	¸¢'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¬
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_30329716_0while_lstm_cell_30329718_0while_lstm_cell_30329720_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30329632r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_30329716while_lstm_cell_30329716_0"6
while_lstm_cell_30329718while_lstm_cell_30329718_0"6
while_lstm_cell_30329720while_lstm_cell_30329720_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
¿
Í
while_cond_30330298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_30330298___redundant_placeholder06
2while_while_cond_30330298___redundant_placeholder16
2while_while_cond_30330298___redundant_placeholder26
2while_while_cond_30330298___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
I

A__inference_rnn_layer_call_and_return_conditional_losses_30332739

inputs;
(lstm_cell_matmul_readvariableop_resource:	2¸=
*lstm_cell_matmul_1_readvariableop_resource:	.¸8
)lstm_cell_biasadd_readvariableop_resource:	¸
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:.ÿÿÿÿÿÿÿÿÿ2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ._
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30332655*
condR
while_cond_30332654*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
ªI

A__inference_rnn_layer_call_and_return_conditional_losses_30332307
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	2¸=
*lstm_cell_matmul_1_readvariableop_resource:	.¸8
)lstm_cell_biasadd_readvariableop_resource:	¸
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ._
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ý
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30332223*
condR
while_cond_30332222*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
ó
³
&__inference_rnn_layer_call_fn_30332163

inputs
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_layer_call_and_return_conditional_losses_30330383o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
ø
¡
Z__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_30331778
x7
%embedding_1_embedding_lookup_30331765:.26
#embedding_embedding_lookup_30331771:	Ñ2
identity¢embedding/embedding_lookup¢embedding_1/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes
:.Ü
embedding_1/embedding_lookupResourceGather%embedding_1_embedding_lookup_30331765range:output:0*
Tindices0*8
_class.
,*loc:@embedding_1/embedding_lookup/30331765*
_output_shapes

:.2*
dtype0»
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_1/embedding_lookup/30331765*
_output_shapes

:.2
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2Z
embedding/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ç
embedding/embedding_lookupResourceGather#embedding_embedding_lookup_30331771embedding/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding/embedding_lookup/30331771*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0Â
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding/embedding_lookup/30331771*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¤
addAddV2.embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.

_user_specified_namex
¡
­
&__inference_signature_wrapper_30331022
input_1
unknown:.2
	unknown_0:	Ñ2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:2
	unknown_9:2

unknown_10:2

unknown_11:2 

unknown_12: 

unknown_13: 2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:	2¸

unknown_18:	.¸

unknown_19:	¸

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_30329225o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_1
8
ý
A__inference_rnn_layer_call_and_return_conditional_losses_30329569

inputs%
lstm_cell_30329486:	2¸%
lstm_cell_30329488:	.¸!
lstm_cell_30329490:	¸
identity¢!lstm_cell/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskî
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_30329486lstm_cell_30329488lstm_cell_30329490*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30329485n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_30329486lstm_cell_30329488lstm_cell_30329490*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30329500*
condR
while_cond_30329499*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ã
¯
(__inference_model_layer_call_fn_30330841
input_1
unknown:.2
	unknown_0:	Ñ2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:2
	unknown_9:2

unknown_10:2

unknown_11:2 

unknown_12: 

unknown_13: 2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:	2¸

unknown_18:	.¸

unknown_19:	¸

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_30330733o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_1"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ª
serving_default
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ.;
dense_30
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:þÆ
³
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb"
_tf_keras_layer
ó
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
att
ffn
 
layernorm1
!
layernorm2
"dropout1
#dropout2"
_tf_keras_layer
Ã
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*cell
+
state_spec"
_tf_keras_rnn_layer
»
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
»
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
Þ
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
P20
221
322
:23
;24"
trackable_list_wrapper
Þ
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
P20
221
322
:23
;24"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Õ
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32ê
(__inference_model_layer_call_fn_30330206
(__inference_model_layer_call_fn_30331077
(__inference_model_layer_call_fn_30331132
(__inference_model_layer_call_fn_30330841¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
Á
Ztrace_0
[trace_1
\trace_2
]trace_32Ö
C__inference_model_layer_call_and_return_conditional_losses_30331432
C__inference_model_layer_call_and_return_conditional_losses_30331745
C__inference_model_layer_call_and_return_conditional_losses_30330900
C__inference_model_layer_call_and_return_conditional_losses_30330959¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zZtrace_0z[trace_1z\trace_2z]trace_3
ÎBË
#__inference__wrapped_model_30329225input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ç
^iter

_beta_1

`beta_2
	adecay
blearning_rate2mý3mþ:mÿ;m<m=m>m?m@mAmBmCmDmEmFmGmHmImJmKmLmMmNmOmPm2v3v:v;v<v=v>v?v@vAvBv Cv¡Dv¢Ev£Fv¤Gv¥Hv¦Iv§Jv¨Kv©LvªMv«Nv¬Ov­Pv®"
	optimizer
,
cserving_default"
signature_map
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
þ
itrace_02á
?__inference_token_and_position_embedding_layer_call_fn_30331754
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zitrace_0

jtrace_02ü
Z__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_30331778
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zjtrace_0
µ
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
<
embeddings"
_tf_keras_layer
µ
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
=
embeddings"
_tf_keras_layer

>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper

>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper
 "
trackable_list_wrapper
­
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ø
|trace_0
}trace_12¡
6__inference_transformer_encoder_layer_call_fn_30331815
6__inference_transformer_encoder_layer_call_fn_30331852®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z|trace_0z}trace_1

~trace_0
trace_12×
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30331979
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30332119®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z~trace_0ztrace_1

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense"
_tf_keras_layer

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Jgamma
Kbeta"
_tf_keras_layer
Ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses
	¡axis
	Lgamma
Mbeta"
_tf_keras_layer
Ã
¢	variables
£trainable_variables
¤regularization_losses
¥	keras_api
¦__call__
+§&call_and_return_all_conditional_losses
¨_random_generator"
_tf_keras_layer
Ã
©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses
¯_random_generator"
_tf_keras_layer
5
N0
O1
P2"
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
 "
trackable_list_wrapper
¿
°states
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
û
¶trace_0
·trace_1
¸trace_2
¹trace_32
&__inference_rnn_layer_call_fn_30332130
&__inference_rnn_layer_call_fn_30332141
&__inference_rnn_layer_call_fn_30332152
&__inference_rnn_layer_call_fn_30332163å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¶trace_0z·trace_1z¸trace_2z¹trace_3
ç
ºtrace_0
»trace_1
¼trace_2
½trace_32ô
A__inference_rnn_layer_call_and_return_conditional_losses_30332307
A__inference_rnn_layer_call_and_return_conditional_losses_30332451
A__inference_rnn_layer_call_and_return_conditional_losses_30332595
A__inference_rnn_layer_call_and_return_conditional_losses_30332739å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zºtrace_0z»trace_1z¼trace_2z½trace_3

¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses
Ä_random_generator
Å
state_size

Nkernel
Orecurrent_kernel
Pbias"
_tf_keras_layer
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
ð
Ëtrace_02Ñ
*__inference_dense_2_layer_call_fn_30332748¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zËtrace_0

Ìtrace_02ì
E__inference_dense_2_layer_call_and_return_conditional_losses_30332759¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÌtrace_0
 :..2dense_2/kernel
:.2dense_2/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
ð
Òtrace_02Ñ
*__inference_dense_3_layer_call_fn_30332768¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÒtrace_0

Ótrace_02ì
E__inference_dense_3_layer_call_and_return_conditional_losses_30332778¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÓtrace_0
 :.2dense_3/kernel
:2dense_3/bias
D:B	Ñ221token_and_position_embedding/embedding/embeddings
E:C.223token_and_position_embedding/embedding_1/embeddings
K:I2225transformer_encoder/multi_head_attention/query/kernel
E:C223transformer_encoder/multi_head_attention/query/bias
I:G2223transformer_encoder/multi_head_attention/key/kernel
C:A221transformer_encoder/multi_head_attention/key/bias
K:I2225transformer_encoder/multi_head_attention/value/kernel
E:C223transformer_encoder/multi_head_attention/value/bias
V:T222@transformer_encoder/multi_head_attention/attention_output/kernel
L:J22>transformer_encoder/multi_head_attention/attention_output/bias
:2 2dense/kernel
: 2
dense/bias
 : 22dense_1/kernel
:22dense_1/bias
;:922-transformer_encoder/layer_normalization/gamma
::822,transformer_encoder/layer_normalization/beta
=:;22/transformer_encoder/layer_normalization_1/gamma
<::22.transformer_encoder/layer_normalization_1/beta
':%	2¸2rnn/lstm_cell/kernel
1:/	.¸2rnn/lstm_cell/recurrent_kernel
!:¸2rnn/lstm_cell/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
0
Ô0
Õ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
úB÷
(__inference_model_layer_call_fn_30330206input_1"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
(__inference_model_layer_call_fn_30331077inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
(__inference_model_layer_call_fn_30331132inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
(__inference_model_layer_call_fn_30330841input_1"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_model_layer_call_and_return_conditional_losses_30331432inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_model_layer_call_and_return_conditional_losses_30331745inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_model_layer_call_and_return_conditional_losses_30330900input_1"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_model_layer_call_and_return_conditional_losses_30330959input_1"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÍBÊ
&__inference_signature_wrapper_30331022input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
éBæ
?__inference_token_and_position_embedding_layer_call_fn_30331754x"
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
Z__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_30331778x"
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
'
<0"
trackable_list_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
'
=0"
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
öBó
6__inference_transformer_encoder_layer_call_fn_30331815inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
öBó
6__inference_transformer_encoder_layer_call_fn_30331852inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30331979inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30332119inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
2
²
FullArgSpecx
argspm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults

 

 
p 
p 
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
²
FullArgSpecx
argspm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults

 

 
p 
p 
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô
å	variables
ætrainable_variables
çregularization_losses
è	keras_api
é__call__
+ê&call_and_return_all_conditional_losses
ëpartial_output_shape
ìfull_output_shape

>kernel
?bias"
_tf_keras_layer
ô
í	variables
îtrainable_variables
ïregularization_losses
ð	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses
ópartial_output_shape
ôfull_output_shape

@kernel
Abias"
_tf_keras_layer
ô
õ	variables
ötrainable_variables
÷regularization_losses
ø	keras_api
ù__call__
+ú&call_and_return_all_conditional_losses
ûpartial_output_shape
üfull_output_shape

Bkernel
Cbias"
_tf_keras_layer
«
ý	variables
þtrainable_variables
ÿregularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
ô
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Dkernel
Ebias"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Fkernel
Gbias"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Hkernel
Ibias"
_tf_keras_layer
<
F0
G1
H2
I3"
trackable_list_wrapper
<
F0
G1
H2
I3"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ñ
£trace_0
¤trace_1
¥trace_2
¦trace_32þ
-__inference_sequential_layer_call_fn_30329317
-__inference_sequential_layer_call_fn_30332791
-__inference_sequential_layer_call_fn_30332804
-__inference_sequential_layer_call_fn_30329390¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z£trace_0z¤trace_1z¥trace_2z¦trace_3
Ý
§trace_0
¨trace_1
©trace_2
ªtrace_32ê
H__inference_sequential_layer_call_and_return_conditional_losses_30332861
H__inference_sequential_layer_call_and_return_conditional_losses_30332918
H__inference_sequential_layer_call_and_return_conditional_losses_30329404
H__inference_sequential_layer_call_and_return_conditional_losses_30329418¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z§trace_0z¨trace_1z©trace_2zªtrace_3
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
µnon_trainable_variables
¶layers
·metrics
 ¸layer_regularization_losses
¹layer_metrics
¢	variables
£trainable_variables
¤regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
*0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
&__inference_rnn_layer_call_fn_30332130inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
&__inference_rnn_layer_call_fn_30332141inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
&__inference_rnn_layer_call_fn_30332152inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
&__inference_rnn_layer_call_fn_30332163inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ºB·
A__inference_rnn_layer_call_and_return_conditional_losses_30332307inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ºB·
A__inference_rnn_layer_call_and_return_conditional_losses_30332451inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¸Bµ
A__inference_rnn_layer_call_and_return_conditional_losses_30332595inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¸Bµ
A__inference_rnn_layer_call_and_return_conditional_losses_30332739inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5
N0
O1
P2"
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
×
Ätrace_0
Åtrace_12
,__inference_lstm_cell_layer_call_fn_30332935
,__inference_lstm_cell_layer_call_fn_30332952½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÄtrace_0zÅtrace_1

Ætrace_0
Çtrace_12Ò
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30332984
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30333016½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÆtrace_0zÇtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÞBÛ
*__inference_dense_2_layer_call_fn_30332748inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
E__inference_dense_2_layer_call_and_return_conditional_losses_30332759inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÞBÛ
*__inference_dense_3_layer_call_fn_30332768inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
E__inference_dense_3_layer_call_and_return_conditional_losses_30332778inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
È	variables
É	keras_api

Êtotal

Ëcount"
_tf_keras_metric
c
Ì	variables
Í	keras_api

Îtotal

Ïcount
Ð
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
P
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ñnon_trainable_variables
Òlayers
Ómetrics
 Ôlayer_regularization_losses
Õlayer_metrics
å	variables
ætrainable_variables
çregularization_losses
é__call__
+ê&call_and_return_all_conditional_losses
'ê"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
í	variables
îtrainable_variables
ïregularization_losses
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
õ	variables
ötrainable_variables
÷regularization_losses
ù__call__
+ú&call_and_return_all_conditional_losses
'ú"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
ý	variables
þtrainable_variables
ÿregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ånon_trainable_variables
ælayers
çmetrics
 èlayer_regularization_losses
élayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ênon_trainable_variables
ëlayers
ìmetrics
 ílayer_regularization_losses
îlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ïnon_trainable_variables
ðlayers
ñmetrics
 òlayer_regularization_losses
ólayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
î
ôtrace_02Ï
(__inference_dense_layer_call_fn_30333025¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zôtrace_0

õtrace_02ê
C__inference_dense_layer_call_and_return_conditional_losses_30333056¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zõtrace_0
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
önon_trainable_variables
÷layers
ømetrics
 ùlayer_regularization_losses
úlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ð
ûtrace_02Ñ
*__inference_dense_1_layer_call_fn_30333065¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zûtrace_0

ütrace_02ì
E__inference_dense_1_layer_call_and_return_conditional_losses_30333095¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zütrace_0
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_sequential_layer_call_fn_30329317dense_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
-__inference_sequential_layer_call_fn_30332791inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
-__inference_sequential_layer_call_fn_30332804inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
-__inference_sequential_layer_call_fn_30329390dense_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_sequential_layer_call_and_return_conditional_losses_30332861inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_sequential_layer_call_and_return_conditional_losses_30332918inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_sequential_layer_call_and_return_conditional_losses_30329404dense_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_sequential_layer_call_and_return_conditional_losses_30329418dense_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_lstm_cell_layer_call_fn_30332935inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
,__inference_lstm_cell_layer_call_fn_30332952inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ªB§
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30332984inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ªB§
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30333016inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
Ê0
Ë1"
trackable_list_wrapper
.
È	variables"
_generic_user_object
:  (2total
:  (2count
0
Î0
Ï1"
trackable_list_wrapper
.
Ì	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBÙ
(__inference_dense_layer_call_fn_30333025inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_dense_layer_call_and_return_conditional_losses_30333056inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÞBÛ
*__inference_dense_1_layer_call_fn_30333065inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
E__inference_dense_1_layer_call_and_return_conditional_losses_30333095inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
%:#..2Adam/dense_2/kernel/m
:.2Adam/dense_2/bias/m
%:#.2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
I:G	Ñ228Adam/token_and_position_embedding/embedding/embeddings/m
J:H.22:Adam/token_and_position_embedding/embedding_1/embeddings/m
P:N222<Adam/transformer_encoder/multi_head_attention/query/kernel/m
J:H22:Adam/transformer_encoder/multi_head_attention/query/bias/m
N:L222:Adam/transformer_encoder/multi_head_attention/key/kernel/m
H:F228Adam/transformer_encoder/multi_head_attention/key/bias/m
P:N222<Adam/transformer_encoder/multi_head_attention/value/kernel/m
J:H22:Adam/transformer_encoder/multi_head_attention/value/bias/m
[:Y222GAdam/transformer_encoder/multi_head_attention/attention_output/kernel/m
Q:O22EAdam/transformer_encoder/multi_head_attention/attention_output/bias/m
#:!2 2Adam/dense/kernel/m
: 2Adam/dense/bias/m
%:# 22Adam/dense_1/kernel/m
:22Adam/dense_1/bias/m
@:>224Adam/transformer_encoder/layer_normalization/gamma/m
?:=223Adam/transformer_encoder/layer_normalization/beta/m
B:@226Adam/transformer_encoder/layer_normalization_1/gamma/m
A:?225Adam/transformer_encoder/layer_normalization_1/beta/m
,:*	2¸2Adam/rnn/lstm_cell/kernel/m
6:4	.¸2%Adam/rnn/lstm_cell/recurrent_kernel/m
&:$¸2Adam/rnn/lstm_cell/bias/m
%:#..2Adam/dense_2/kernel/v
:.2Adam/dense_2/bias/v
%:#.2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
I:G	Ñ228Adam/token_and_position_embedding/embedding/embeddings/v
J:H.22:Adam/token_and_position_embedding/embedding_1/embeddings/v
P:N222<Adam/transformer_encoder/multi_head_attention/query/kernel/v
J:H22:Adam/transformer_encoder/multi_head_attention/query/bias/v
N:L222:Adam/transformer_encoder/multi_head_attention/key/kernel/v
H:F228Adam/transformer_encoder/multi_head_attention/key/bias/v
P:N222<Adam/transformer_encoder/multi_head_attention/value/kernel/v
J:H22:Adam/transformer_encoder/multi_head_attention/value/bias/v
[:Y222GAdam/transformer_encoder/multi_head_attention/attention_output/kernel/v
Q:O22EAdam/transformer_encoder/multi_head_attention/attention_output/bias/v
#:!2 2Adam/dense/kernel/v
: 2Adam/dense/bias/v
%:# 22Adam/dense_1/kernel/v
:22Adam/dense_1/bias/v
@:>224Adam/transformer_encoder/layer_normalization/gamma/v
?:=223Adam/transformer_encoder/layer_normalization/beta/v
B:@226Adam/transformer_encoder/layer_normalization_1/gamma/v
A:?225Adam/transformer_encoder/layer_normalization_1/beta/v
,:*	2¸2Adam/rnn/lstm_cell/kernel/v
6:4	.¸2%Adam/rnn/lstm_cell/recurrent_kernel/v
&:$¸2Adam/rnn/lstm_cell/bias/v¨
#__inference__wrapped_model_30329225=<>?@ABCDEJKFGHILMNOP23:;0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ.
ª "1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ­
E__inference_dense_1_layer_call_and_return_conditional_losses_30333095dHI3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ. 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 
*__inference_dense_1_layer_call_fn_30333065WHI3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ. 
ª "ÿÿÿÿÿÿÿÿÿ.2¥
E__inference_dense_2_layer_call_and_return_conditional_losses_30332759\23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 }
*__inference_dense_2_layer_call_fn_30332748O23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿ.¥
E__inference_dense_3_layer_call_and_return_conditional_losses_30332778\:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_3_layer_call_fn_30332768O:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿ«
C__inference_dense_layer_call_and_return_conditional_losses_30333056dFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ.2
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ. 
 
(__inference_dense_layer_call_fn_30333025WFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ.2
ª "ÿÿÿÿÿÿÿÿÿ. É
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30332984ýNOP¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ.
"
states/1ÿÿÿÿÿÿÿÿÿ.
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ.
EB

0/1/0ÿÿÿÿÿÿÿÿÿ.

0/1/1ÿÿÿÿÿÿÿÿÿ.
 É
G__inference_lstm_cell_layer_call_and_return_conditional_losses_30333016ýNOP¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ.
"
states/1ÿÿÿÿÿÿÿÿÿ.
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ.
EB

0/1/0ÿÿÿÿÿÿÿÿÿ.

0/1/1ÿÿÿÿÿÿÿÿÿ.
 
,__inference_lstm_cell_layer_call_fn_30332935íNOP¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ.
"
states/1ÿÿÿÿÿÿÿÿÿ.
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ.
A>

1/0ÿÿÿÿÿÿÿÿÿ.

1/1ÿÿÿÿÿÿÿÿÿ.
,__inference_lstm_cell_layer_call_fn_30332952íNOP¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ.
"
states/1ÿÿÿÿÿÿÿÿÿ.
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ.
A>

1/0ÿÿÿÿÿÿÿÿÿ.

1/1ÿÿÿÿÿÿÿÿÿ.Ã
C__inference_model_layer_call_and_return_conditional_losses_30330900|=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ.
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ã
C__inference_model_layer_call_and_return_conditional_losses_30330959|=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ.
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
C__inference_model_layer_call_and_return_conditional_losses_30331432{=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
C__inference_model_layer_call_and_return_conditional_losses_30331745{=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_model_layer_call_fn_30330206o=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ.
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_layer_call_fn_30330841o=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ.
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_layer_call_fn_30331077n=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_layer_call_fn_30331132n=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p

 
ª "ÿÿÿÿÿÿÿÿÿÇ
A__inference_rnn_layer_call_and_return_conditional_losses_30332307NOPS¢P
I¢F
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 Ç
A__inference_rnn_layer_call_and_return_conditional_losses_30332451NOPS¢P
I¢F
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 ¶
A__inference_rnn_layer_call_and_return_conditional_losses_30332595qNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ.2

 
p 

 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 ¶
A__inference_rnn_layer_call_and_return_conditional_losses_30332739qNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ.2

 
p

 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 
&__inference_rnn_layer_call_fn_30332130tNOPS¢P
I¢F
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 

 
ª "ÿÿÿÿÿÿÿÿÿ.
&__inference_rnn_layer_call_fn_30332141tNOPS¢P
I¢F
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 

 
ª "ÿÿÿÿÿÿÿÿÿ.
&__inference_rnn_layer_call_fn_30332152dNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ.2

 
p 

 

 
ª "ÿÿÿÿÿÿÿÿÿ.
&__inference_rnn_layer_call_fn_30332163dNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ.2

 
p

 

 
ª "ÿÿÿÿÿÿÿÿÿ.¿
H__inference_sequential_layer_call_and_return_conditional_losses_30329404sFGHI@¢=
6¢3
)&
dense_inputÿÿÿÿÿÿÿÿÿ.2
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 ¿
H__inference_sequential_layer_call_and_return_conditional_losses_30329418sFGHI@¢=
6¢3
)&
dense_inputÿÿÿÿÿÿÿÿÿ.2
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 º
H__inference_sequential_layer_call_and_return_conditional_losses_30332861nFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 º
H__inference_sequential_layer_call_and_return_conditional_losses_30332918nFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 
-__inference_sequential_layer_call_fn_30329317fFGHI@¢=
6¢3
)&
dense_inputÿÿÿÿÿÿÿÿÿ.2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ.2
-__inference_sequential_layer_call_fn_30329390fFGHI@¢=
6¢3
)&
dense_inputÿÿÿÿÿÿÿÿÿ.2
p

 
ª "ÿÿÿÿÿÿÿÿÿ.2
-__inference_sequential_layer_call_fn_30332791aFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ.2
-__inference_sequential_layer_call_fn_30332804aFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p

 
ª "ÿÿÿÿÿÿÿÿÿ.2¶
&__inference_signature_wrapper_30331022=<>?@ABCDEJKFGHILMNOP23:;;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ."1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ¹
Z__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_30331778[=<*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ.
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 
?__inference_token_and_position_embedding_layer_call_fn_30331754N=<*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿ.2Ë
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30331979v>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 Ë
Q__inference_transformer_encoder_layer_call_and_return_conditional_losses_30332119v>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 £
6__inference_transformer_encoder_layer_call_fn_30331815i>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 
ª "ÿÿÿÿÿÿÿÿÿ.2£
6__inference_transformer_encoder_layer_call_fn_30331852i>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p
ª "ÿÿÿÿÿÿÿÿÿ.2