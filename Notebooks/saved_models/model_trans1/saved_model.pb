Î·,
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
"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8Ç(

Adam/rnn_6/lstm_cell_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*.
shared_nameAdam/rnn_6/lstm_cell_6/bias/v

1Adam/rnn_6/lstm_cell_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn_6/lstm_cell_6/bias/v*
_output_shapes	
:¸*
dtype0
¯
)Adam/rnn_6/lstm_cell_6/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*:
shared_name+)Adam/rnn_6/lstm_cell_6/recurrent_kernel/v
¨
=Adam/rnn_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp)Adam/rnn_6/lstm_cell_6/recurrent_kernel/v*
_output_shapes
:	.¸*
dtype0

Adam/rnn_6/lstm_cell_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*0
shared_name!Adam/rnn_6/lstm_cell_6/kernel/v

3Adam/rnn_6/lstm_cell_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn_6/lstm_cell_6/kernel/v*
_output_shapes
:	2¸*
dtype0
Ì
:Adam/transformer_encoder_58/layer_normalization_117/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*K
shared_name<:Adam/transformer_encoder_58/layer_normalization_117/beta/v
Å
NAdam/transformer_encoder_58/layer_normalization_117/beta/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder_58/layer_normalization_117/beta/v*
_output_shapes
:2*
dtype0
Î
;Adam/transformer_encoder_58/layer_normalization_117/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*L
shared_name=;Adam/transformer_encoder_58/layer_normalization_117/gamma/v
Ç
OAdam/transformer_encoder_58/layer_normalization_117/gamma/v/Read/ReadVariableOpReadVariableOp;Adam/transformer_encoder_58/layer_normalization_117/gamma/v*
_output_shapes
:2*
dtype0
Ì
:Adam/transformer_encoder_58/layer_normalization_116/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*K
shared_name<:Adam/transformer_encoder_58/layer_normalization_116/beta/v
Å
NAdam/transformer_encoder_58/layer_normalization_116/beta/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder_58/layer_normalization_116/beta/v*
_output_shapes
:2*
dtype0
Î
;Adam/transformer_encoder_58/layer_normalization_116/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*L
shared_name=;Adam/transformer_encoder_58/layer_normalization_116/gamma/v
Ç
OAdam/transformer_encoder_58/layer_normalization_116/gamma/v/Read/ReadVariableOpReadVariableOp;Adam/transformer_encoder_58/layer_normalization_116/gamma/v*
_output_shapes
:2*
dtype0

Adam/dense_183/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*&
shared_nameAdam/dense_183/bias/v
{
)Adam/dense_183/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_183/bias/v*
_output_shapes
:2*
dtype0

Adam/dense_183/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*(
shared_nameAdam/dense_183/kernel/v

+Adam/dense_183/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_183/kernel/v*
_output_shapes

: 2*
dtype0

Adam/dense_182/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_182/bias/v
{
)Adam/dense_182/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_182/bias/v*
_output_shapes
: *
dtype0

Adam/dense_182/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *(
shared_nameAdam/dense_182/kernel/v

+Adam/dense_182/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_182/kernel/v*
_output_shapes

:2 *
dtype0
î
KAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*\
shared_nameMKAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/v
ç
_Adam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/v/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/v*
_output_shapes
:2*
dtype0
ú
MAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*^
shared_nameOMAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/v
ó
aAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpMAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/v*"
_output_shapes
:22*
dtype0
Ü
@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*Q
shared_nameB@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/v
Õ
TAdam/transformer_encoder_58/multi_head_attention_58/value/bias/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/v*
_output_shapes

:2*
dtype0
ä
BAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*S
shared_nameDBAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/v
Ý
VAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/v/Read/ReadVariableOpReadVariableOpBAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/v*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/v
Ñ
RAdam/transformer_encoder_58/multi_head_attention_58/key/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/v*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/v
Ù
TAdam/transformer_encoder_58/multi_head_attention_58/key/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/v*"
_output_shapes
:22*
dtype0
Ü
@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*Q
shared_nameB@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/v
Õ
TAdam/transformer_encoder_58/multi_head_attention_58/query/bias/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/v*
_output_shapes

:2*
dtype0
ä
BAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*S
shared_nameDBAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/v
Ý
VAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/v/Read/ReadVariableOpReadVariableOpBAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/v*"
_output_shapes
:22*
dtype0
Ú
?Adam/token_and_position_embedding_59/embedding_119/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*P
shared_nameA?Adam/token_and_position_embedding_59/embedding_119/embeddings/v
Ó
SAdam/token_and_position_embedding_59/embedding_119/embeddings/v/Read/ReadVariableOpReadVariableOp?Adam/token_and_position_embedding_59/embedding_119/embeddings/v*
_output_shapes

:.2*
dtype0
Û
?Adam/token_and_position_embedding_59/embedding_118/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*P
shared_nameA?Adam/token_and_position_embedding_59/embedding_118/embeddings/v
Ô
SAdam/token_and_position_embedding_59/embedding_118/embeddings/v/Read/ReadVariableOpReadVariableOp?Adam/token_and_position_embedding_59/embedding_118/embeddings/v*
_output_shapes
:	2*
dtype0

Adam/dense_187/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_187/bias/v
{
)Adam/dense_187/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_187/bias/v*
_output_shapes
:*
dtype0

Adam/dense_187/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*(
shared_nameAdam/dense_187/kernel/v

+Adam/dense_187/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_187/kernel/v*
_output_shapes

:.*
dtype0

Adam/dense_186/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*&
shared_nameAdam/dense_186/bias/v
{
)Adam/dense_186/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_186/bias/v*
_output_shapes
:.*
dtype0

Adam/dense_186/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*(
shared_nameAdam/dense_186/kernel/v

+Adam/dense_186/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_186/kernel/v*
_output_shapes

:..*
dtype0

Adam/rnn_6/lstm_cell_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*.
shared_nameAdam/rnn_6/lstm_cell_6/bias/m

1Adam/rnn_6/lstm_cell_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn_6/lstm_cell_6/bias/m*
_output_shapes	
:¸*
dtype0
¯
)Adam/rnn_6/lstm_cell_6/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*:
shared_name+)Adam/rnn_6/lstm_cell_6/recurrent_kernel/m
¨
=Adam/rnn_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp)Adam/rnn_6/lstm_cell_6/recurrent_kernel/m*
_output_shapes
:	.¸*
dtype0

Adam/rnn_6/lstm_cell_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*0
shared_name!Adam/rnn_6/lstm_cell_6/kernel/m

3Adam/rnn_6/lstm_cell_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn_6/lstm_cell_6/kernel/m*
_output_shapes
:	2¸*
dtype0
Ì
:Adam/transformer_encoder_58/layer_normalization_117/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*K
shared_name<:Adam/transformer_encoder_58/layer_normalization_117/beta/m
Å
NAdam/transformer_encoder_58/layer_normalization_117/beta/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder_58/layer_normalization_117/beta/m*
_output_shapes
:2*
dtype0
Î
;Adam/transformer_encoder_58/layer_normalization_117/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*L
shared_name=;Adam/transformer_encoder_58/layer_normalization_117/gamma/m
Ç
OAdam/transformer_encoder_58/layer_normalization_117/gamma/m/Read/ReadVariableOpReadVariableOp;Adam/transformer_encoder_58/layer_normalization_117/gamma/m*
_output_shapes
:2*
dtype0
Ì
:Adam/transformer_encoder_58/layer_normalization_116/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*K
shared_name<:Adam/transformer_encoder_58/layer_normalization_116/beta/m
Å
NAdam/transformer_encoder_58/layer_normalization_116/beta/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_encoder_58/layer_normalization_116/beta/m*
_output_shapes
:2*
dtype0
Î
;Adam/transformer_encoder_58/layer_normalization_116/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*L
shared_name=;Adam/transformer_encoder_58/layer_normalization_116/gamma/m
Ç
OAdam/transformer_encoder_58/layer_normalization_116/gamma/m/Read/ReadVariableOpReadVariableOp;Adam/transformer_encoder_58/layer_normalization_116/gamma/m*
_output_shapes
:2*
dtype0

Adam/dense_183/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*&
shared_nameAdam/dense_183/bias/m
{
)Adam/dense_183/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_183/bias/m*
_output_shapes
:2*
dtype0

Adam/dense_183/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*(
shared_nameAdam/dense_183/kernel/m

+Adam/dense_183/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_183/kernel/m*
_output_shapes

: 2*
dtype0

Adam/dense_182/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_182/bias/m
{
)Adam/dense_182/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_182/bias/m*
_output_shapes
: *
dtype0

Adam/dense_182/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *(
shared_nameAdam/dense_182/kernel/m

+Adam/dense_182/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_182/kernel/m*
_output_shapes

:2 *
dtype0
î
KAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*\
shared_nameMKAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/m
ç
_Adam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/m/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/m*
_output_shapes
:2*
dtype0
ú
MAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*^
shared_nameOMAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/m
ó
aAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpMAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/m*"
_output_shapes
:22*
dtype0
Ü
@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*Q
shared_nameB@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/m
Õ
TAdam/transformer_encoder_58/multi_head_attention_58/value/bias/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/m*
_output_shapes

:2*
dtype0
ä
BAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*S
shared_nameDBAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/m
Ý
VAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/m/Read/ReadVariableOpReadVariableOpBAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/m*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/m
Ñ
RAdam/transformer_encoder_58/multi_head_attention_58/key/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/m*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/m
Ù
TAdam/transformer_encoder_58/multi_head_attention_58/key/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/m*"
_output_shapes
:22*
dtype0
Ü
@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*Q
shared_nameB@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/m
Õ
TAdam/transformer_encoder_58/multi_head_attention_58/query/bias/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/m*
_output_shapes

:2*
dtype0
ä
BAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*S
shared_nameDBAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/m
Ý
VAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/m/Read/ReadVariableOpReadVariableOpBAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/m*"
_output_shapes
:22*
dtype0
Ú
?Adam/token_and_position_embedding_59/embedding_119/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*P
shared_nameA?Adam/token_and_position_embedding_59/embedding_119/embeddings/m
Ó
SAdam/token_and_position_embedding_59/embedding_119/embeddings/m/Read/ReadVariableOpReadVariableOp?Adam/token_and_position_embedding_59/embedding_119/embeddings/m*
_output_shapes

:.2*
dtype0
Û
?Adam/token_and_position_embedding_59/embedding_118/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*P
shared_nameA?Adam/token_and_position_embedding_59/embedding_118/embeddings/m
Ô
SAdam/token_and_position_embedding_59/embedding_118/embeddings/m/Read/ReadVariableOpReadVariableOp?Adam/token_and_position_embedding_59/embedding_118/embeddings/m*
_output_shapes
:	2*
dtype0

Adam/dense_187/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_187/bias/m
{
)Adam/dense_187/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_187/bias/m*
_output_shapes
:*
dtype0

Adam/dense_187/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*(
shared_nameAdam/dense_187/kernel/m

+Adam/dense_187/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_187/kernel/m*
_output_shapes

:.*
dtype0

Adam/dense_186/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*&
shared_nameAdam/dense_186/bias/m
{
)Adam/dense_186/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_186/bias/m*
_output_shapes
:.*
dtype0

Adam/dense_186/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*(
shared_nameAdam/dense_186/kernel/m

+Adam/dense_186/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_186/kernel/m*
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

rnn_6/lstm_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*'
shared_namernn_6/lstm_cell_6/bias
~
*rnn_6/lstm_cell_6/bias/Read/ReadVariableOpReadVariableOprnn_6/lstm_cell_6/bias*
_output_shapes	
:¸*
dtype0
¡
"rnn_6/lstm_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*3
shared_name$"rnn_6/lstm_cell_6/recurrent_kernel

6rnn_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp"rnn_6/lstm_cell_6/recurrent_kernel*
_output_shapes
:	.¸*
dtype0

rnn_6/lstm_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*)
shared_namernn_6/lstm_cell_6/kernel

,rnn_6/lstm_cell_6/kernel/Read/ReadVariableOpReadVariableOprnn_6/lstm_cell_6/kernel*
_output_shapes
:	2¸*
dtype0
¾
3transformer_encoder_58/layer_normalization_117/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*D
shared_name53transformer_encoder_58/layer_normalization_117/beta
·
Gtransformer_encoder_58/layer_normalization_117/beta/Read/ReadVariableOpReadVariableOp3transformer_encoder_58/layer_normalization_117/beta*
_output_shapes
:2*
dtype0
À
4transformer_encoder_58/layer_normalization_117/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*E
shared_name64transformer_encoder_58/layer_normalization_117/gamma
¹
Htransformer_encoder_58/layer_normalization_117/gamma/Read/ReadVariableOpReadVariableOp4transformer_encoder_58/layer_normalization_117/gamma*
_output_shapes
:2*
dtype0
¾
3transformer_encoder_58/layer_normalization_116/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*D
shared_name53transformer_encoder_58/layer_normalization_116/beta
·
Gtransformer_encoder_58/layer_normalization_116/beta/Read/ReadVariableOpReadVariableOp3transformer_encoder_58/layer_normalization_116/beta*
_output_shapes
:2*
dtype0
À
4transformer_encoder_58/layer_normalization_116/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*E
shared_name64transformer_encoder_58/layer_normalization_116/gamma
¹
Htransformer_encoder_58/layer_normalization_116/gamma/Read/ReadVariableOpReadVariableOp4transformer_encoder_58/layer_normalization_116/gamma*
_output_shapes
:2*
dtype0
t
dense_183/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_183/bias
m
"dense_183/bias/Read/ReadVariableOpReadVariableOpdense_183/bias*
_output_shapes
:2*
dtype0
|
dense_183/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*!
shared_namedense_183/kernel
u
$dense_183/kernel/Read/ReadVariableOpReadVariableOpdense_183/kernel*
_output_shapes

: 2*
dtype0
t
dense_182/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_182/bias
m
"dense_182/bias/Read/ReadVariableOpReadVariableOpdense_182/bias*
_output_shapes
: *
dtype0
|
dense_182/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *!
shared_namedense_182/kernel
u
$dense_182/kernel/Read/ReadVariableOpReadVariableOpdense_182/kernel*
_output_shapes

:2 *
dtype0
à
Dtransformer_encoder_58/multi_head_attention_58/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*U
shared_nameFDtransformer_encoder_58/multi_head_attention_58/attention_output/bias
Ù
Xtransformer_encoder_58/multi_head_attention_58/attention_output/bias/Read/ReadVariableOpReadVariableOpDtransformer_encoder_58/multi_head_attention_58/attention_output/bias*
_output_shapes
:2*
dtype0
ì
Ftransformer_encoder_58/multi_head_attention_58/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*W
shared_nameHFtransformer_encoder_58/multi_head_attention_58/attention_output/kernel
å
Ztransformer_encoder_58/multi_head_attention_58/attention_output/kernel/Read/ReadVariableOpReadVariableOpFtransformer_encoder_58/multi_head_attention_58/attention_output/kernel*"
_output_shapes
:22*
dtype0
Î
9transformer_encoder_58/multi_head_attention_58/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*J
shared_name;9transformer_encoder_58/multi_head_attention_58/value/bias
Ç
Mtransformer_encoder_58/multi_head_attention_58/value/bias/Read/ReadVariableOpReadVariableOp9transformer_encoder_58/multi_head_attention_58/value/bias*
_output_shapes

:2*
dtype0
Ö
;transformer_encoder_58/multi_head_attention_58/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*L
shared_name=;transformer_encoder_58/multi_head_attention_58/value/kernel
Ï
Otransformer_encoder_58/multi_head_attention_58/value/kernel/Read/ReadVariableOpReadVariableOp;transformer_encoder_58/multi_head_attention_58/value/kernel*"
_output_shapes
:22*
dtype0
Ê
7transformer_encoder_58/multi_head_attention_58/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_58/multi_head_attention_58/key/bias
Ã
Ktransformer_encoder_58/multi_head_attention_58/key/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_58/multi_head_attention_58/key/bias*
_output_shapes

:2*
dtype0
Ò
9transformer_encoder_58/multi_head_attention_58/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_58/multi_head_attention_58/key/kernel
Ë
Mtransformer_encoder_58/multi_head_attention_58/key/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_58/multi_head_attention_58/key/kernel*"
_output_shapes
:22*
dtype0
Î
9transformer_encoder_58/multi_head_attention_58/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*J
shared_name;9transformer_encoder_58/multi_head_attention_58/query/bias
Ç
Mtransformer_encoder_58/multi_head_attention_58/query/bias/Read/ReadVariableOpReadVariableOp9transformer_encoder_58/multi_head_attention_58/query/bias*
_output_shapes

:2*
dtype0
Ö
;transformer_encoder_58/multi_head_attention_58/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*L
shared_name=;transformer_encoder_58/multi_head_attention_58/query/kernel
Ï
Otransformer_encoder_58/multi_head_attention_58/query/kernel/Read/ReadVariableOpReadVariableOp;transformer_encoder_58/multi_head_attention_58/query/kernel*"
_output_shapes
:22*
dtype0
Ì
8token_and_position_embedding_59/embedding_119/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*I
shared_name:8token_and_position_embedding_59/embedding_119/embeddings
Å
Ltoken_and_position_embedding_59/embedding_119/embeddings/Read/ReadVariableOpReadVariableOp8token_and_position_embedding_59/embedding_119/embeddings*
_output_shapes

:.2*
dtype0
Í
8token_and_position_embedding_59/embedding_118/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*I
shared_name:8token_and_position_embedding_59/embedding_118/embeddings
Æ
Ltoken_and_position_embedding_59/embedding_118/embeddings/Read/ReadVariableOpReadVariableOp8token_and_position_embedding_59/embedding_118/embeddings*
_output_shapes
:	2*
dtype0
t
dense_187/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_187/bias
m
"dense_187/bias/Read/ReadVariableOpReadVariableOpdense_187/bias*
_output_shapes
:*
dtype0
|
dense_187/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*!
shared_namedense_187/kernel
u
$dense_187/kernel/Read/ReadVariableOpReadVariableOpdense_187/kernel*
_output_shapes

:.*
dtype0
t
dense_186/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*
shared_namedense_186/bias
m
"dense_186/bias/Read/ReadVariableOpReadVariableOpdense_186/bias*
_output_shapes
:.*
dtype0
|
dense_186/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*!
shared_namedense_186/kernel
u
$dense_186/kernel/Read/ReadVariableOpReadVariableOpdense_186/kernel*
_output_shapes

:..*
dtype0
{
serving_default_input_60Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ.

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_608token_and_position_embedding_59/embedding_119/embeddings8token_and_position_embedding_59/embedding_118/embeddings;transformer_encoder_58/multi_head_attention_58/query/kernel9transformer_encoder_58/multi_head_attention_58/query/bias9transformer_encoder_58/multi_head_attention_58/key/kernel7transformer_encoder_58/multi_head_attention_58/key/bias;transformer_encoder_58/multi_head_attention_58/value/kernel9transformer_encoder_58/multi_head_attention_58/value/biasFtransformer_encoder_58/multi_head_attention_58/attention_output/kernelDtransformer_encoder_58/multi_head_attention_58/attention_output/bias4transformer_encoder_58/layer_normalization_116/gamma3transformer_encoder_58/layer_normalization_116/betadense_182/kerneldense_182/biasdense_183/kerneldense_183/bias4transformer_encoder_58/layer_normalization_117/gamma3transformer_encoder_58/layer_normalization_117/betarnn_6/lstm_cell_6/kernel"rnn_6/lstm_cell_6/recurrent_kernelrnn_6/lstm_cell_6/biasdense_186/kerneldense_186/biasdense_187/kerneldense_187/bias*%
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
GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2651828

NoOpNoOp
Ê
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*×É
valueÌÉBÈÉ BÀÉ
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
blearning_rate2m÷3mø:mù;mú<mû=mü>mý?mþ@mÿAmBmCmDmEmFmGmHmImJmKmLmMmNmOmPm2v3v:v;v<v=v>v?v@vAvBvCvDvEvFvGvHv Iv¡Jv¢Kv£Lv¤Mv¥Nv¦Ov§Pv¨*
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
`Z
VARIABLE_VALUEdense_186/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_186/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
`Z
VARIABLE_VALUEdense_187/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_187/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8token_and_position_embedding_59/embedding_118/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8token_and_position_embedding_59/embedding_119/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE;transformer_encoder_58/multi_head_attention_58/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_58/multi_head_attention_58/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_58/multi_head_attention_58/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_58/multi_head_attention_58/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE;transformer_encoder_58/multi_head_attention_58/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_58/multi_head_attention_58/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEFtransformer_encoder_58/multi_head_attention_58/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEDtransformer_encoder_58/multi_head_attention_58/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_182/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_182/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_183/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_183/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE4transformer_encoder_58/layer_normalization_116/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3transformer_encoder_58/layer_normalization_116/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE4transformer_encoder_58/layer_normalization_117/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3transformer_encoder_58/layer_normalization_117/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUErnn_6/lstm_cell_6/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"rnn_6/lstm_cell_6/recurrent_kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUErnn_6/lstm_cell_6/bias'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

Ô0*
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
Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
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
Únon_trainable_variables
Ûlayers
Ümetrics
 Ýlayer_regularization_losses
Þlayer_metrics
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
ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
ß
ä	variables
åtrainable_variables
æregularization_losses
ç	keras_api
è__call__
+é&call_and_return_all_conditional_losses
êpartial_output_shape
ëfull_output_shape

>kernel
?bias*
ß
ì	variables
ítrainable_variables
îregularization_losses
ï	keras_api
ð__call__
+ñ&call_and_return_all_conditional_losses
òpartial_output_shape
ófull_output_shape

@kernel
Abias*
ß
ô	variables
õtrainable_variables
öregularization_losses
÷	keras_api
ø__call__
+ù&call_and_return_all_conditional_losses
úpartial_output_shape
ûfull_output_shape

Bkernel
Cbias*

ü	variables
ýtrainable_variables
þregularization_losses
ÿ	keras_api
__call__
+&call_and_return_all_conditional_losses* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 
ß
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Dkernel
Ebias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Fkernel
Gbias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

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
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
¢trace_0
£trace_1
¤trace_2
¥trace_3* 
:
¦trace_0
§trace_1
¨trace_2
©trace_3* 

J0
K1*

J0
K1*
* 

ªnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
®layer_metrics
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
¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
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
´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
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
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
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
¾non_trainable_variables
¿layers
Àmetrics
 Álayer_regularization_losses
Âlayer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses*

Ãtrace_0
Ätrace_1* 

Åtrace_0
Ætrace_1* 
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
Ç	variables
È	keras_api

Étotal

Êcount*
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
Ënon_trainable_variables
Ìlayers
Ímetrics
 Îlayer_regularization_losses
Ïlayer_metrics
ä	variables
åtrainable_variables
æregularization_losses
è__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses*
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
Ðnon_trainable_variables
Ñlayers
Òmetrics
 Ólayer_regularization_losses
Ôlayer_metrics
ì	variables
ítrainable_variables
îregularization_losses
ð__call__
+ñ&call_and_return_all_conditional_losses
'ñ"call_and_return_conditional_losses*
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
Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
ô	variables
õtrainable_variables
öregularization_losses
ø__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

Únon_trainable_variables
Ûlayers
Ümetrics
 Ýlayer_regularization_losses
Þlayer_metrics
ü	variables
ýtrainable_variables
þregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
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
änon_trainable_variables
ålayers
æmetrics
 çlayer_regularization_losses
èlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
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
énon_trainable_variables
êlayers
ëmetrics
 ìlayer_regularization_losses
ílayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

îtrace_0* 

ïtrace_0* 

H0
I1*

H0
I1*
* 

ðnon_trainable_variables
ñlayers
òmetrics
 ólayer_regularization_losses
ôlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

õtrace_0* 

ötrace_0* 
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
É0
Ê1*

Ç	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
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
}
VARIABLE_VALUEAdam/dense_186/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_186/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_187/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_187/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE?Adam/token_and_position_embedding_59/embedding_118/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE?Adam/token_and_position_embedding_59/embedding_119/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEBAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEBAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ª£
VARIABLE_VALUEMAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEKAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_182/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_182/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_183/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_183/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE;Adam/transformer_encoder_58/layer_normalization_116/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_encoder_58/layer_normalization_116/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE;Adam/transformer_encoder_58/layer_normalization_117/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_encoder_58/layer_normalization_117/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/rnn_6/lstm_cell_6/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/rnn_6/lstm_cell_6/recurrent_kernel/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/rnn_6/lstm_cell_6/bias/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_186/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_186/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_187/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_187/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE?Adam/token_and_position_embedding_59/embedding_118/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE?Adam/token_and_position_embedding_59/embedding_119/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEBAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEBAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ª£
VARIABLE_VALUEMAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEKAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_182/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_182/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_183/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_183/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE;Adam/transformer_encoder_58/layer_normalization_116/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_encoder_58/layer_normalization_116/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE;Adam/transformer_encoder_58/layer_normalization_117/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/transformer_encoder_58/layer_normalization_117/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/rnn_6/lstm_cell_6/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/rnn_6/lstm_cell_6/recurrent_kernel/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/rnn_6/lstm_cell_6/bias/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Õ+
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_186/kernel/Read/ReadVariableOp"dense_186/bias/Read/ReadVariableOp$dense_187/kernel/Read/ReadVariableOp"dense_187/bias/Read/ReadVariableOpLtoken_and_position_embedding_59/embedding_118/embeddings/Read/ReadVariableOpLtoken_and_position_embedding_59/embedding_119/embeddings/Read/ReadVariableOpOtransformer_encoder_58/multi_head_attention_58/query/kernel/Read/ReadVariableOpMtransformer_encoder_58/multi_head_attention_58/query/bias/Read/ReadVariableOpMtransformer_encoder_58/multi_head_attention_58/key/kernel/Read/ReadVariableOpKtransformer_encoder_58/multi_head_attention_58/key/bias/Read/ReadVariableOpOtransformer_encoder_58/multi_head_attention_58/value/kernel/Read/ReadVariableOpMtransformer_encoder_58/multi_head_attention_58/value/bias/Read/ReadVariableOpZtransformer_encoder_58/multi_head_attention_58/attention_output/kernel/Read/ReadVariableOpXtransformer_encoder_58/multi_head_attention_58/attention_output/bias/Read/ReadVariableOp$dense_182/kernel/Read/ReadVariableOp"dense_182/bias/Read/ReadVariableOp$dense_183/kernel/Read/ReadVariableOp"dense_183/bias/Read/ReadVariableOpHtransformer_encoder_58/layer_normalization_116/gamma/Read/ReadVariableOpGtransformer_encoder_58/layer_normalization_116/beta/Read/ReadVariableOpHtransformer_encoder_58/layer_normalization_117/gamma/Read/ReadVariableOpGtransformer_encoder_58/layer_normalization_117/beta/Read/ReadVariableOp,rnn_6/lstm_cell_6/kernel/Read/ReadVariableOp6rnn_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOp*rnn_6/lstm_cell_6/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_186/kernel/m/Read/ReadVariableOp)Adam/dense_186/bias/m/Read/ReadVariableOp+Adam/dense_187/kernel/m/Read/ReadVariableOp)Adam/dense_187/bias/m/Read/ReadVariableOpSAdam/token_and_position_embedding_59/embedding_118/embeddings/m/Read/ReadVariableOpSAdam/token_and_position_embedding_59/embedding_119/embeddings/m/Read/ReadVariableOpVAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/m/Read/ReadVariableOpTAdam/transformer_encoder_58/multi_head_attention_58/query/bias/m/Read/ReadVariableOpTAdam/transformer_encoder_58/multi_head_attention_58/key/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_58/multi_head_attention_58/key/bias/m/Read/ReadVariableOpVAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/m/Read/ReadVariableOpTAdam/transformer_encoder_58/multi_head_attention_58/value/bias/m/Read/ReadVariableOpaAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/m/Read/ReadVariableOp_Adam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/m/Read/ReadVariableOp+Adam/dense_182/kernel/m/Read/ReadVariableOp)Adam/dense_182/bias/m/Read/ReadVariableOp+Adam/dense_183/kernel/m/Read/ReadVariableOp)Adam/dense_183/bias/m/Read/ReadVariableOpOAdam/transformer_encoder_58/layer_normalization_116/gamma/m/Read/ReadVariableOpNAdam/transformer_encoder_58/layer_normalization_116/beta/m/Read/ReadVariableOpOAdam/transformer_encoder_58/layer_normalization_117/gamma/m/Read/ReadVariableOpNAdam/transformer_encoder_58/layer_normalization_117/beta/m/Read/ReadVariableOp3Adam/rnn_6/lstm_cell_6/kernel/m/Read/ReadVariableOp=Adam/rnn_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOp1Adam/rnn_6/lstm_cell_6/bias/m/Read/ReadVariableOp+Adam/dense_186/kernel/v/Read/ReadVariableOp)Adam/dense_186/bias/v/Read/ReadVariableOp+Adam/dense_187/kernel/v/Read/ReadVariableOp)Adam/dense_187/bias/v/Read/ReadVariableOpSAdam/token_and_position_embedding_59/embedding_118/embeddings/v/Read/ReadVariableOpSAdam/token_and_position_embedding_59/embedding_119/embeddings/v/Read/ReadVariableOpVAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/v/Read/ReadVariableOpTAdam/transformer_encoder_58/multi_head_attention_58/query/bias/v/Read/ReadVariableOpTAdam/transformer_encoder_58/multi_head_attention_58/key/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_58/multi_head_attention_58/key/bias/v/Read/ReadVariableOpVAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/v/Read/ReadVariableOpTAdam/transformer_encoder_58/multi_head_attention_58/value/bias/v/Read/ReadVariableOpaAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/v/Read/ReadVariableOp_Adam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/v/Read/ReadVariableOp+Adam/dense_182/kernel/v/Read/ReadVariableOp)Adam/dense_182/bias/v/Read/ReadVariableOp+Adam/dense_183/kernel/v/Read/ReadVariableOp)Adam/dense_183/bias/v/Read/ReadVariableOpOAdam/transformer_encoder_58/layer_normalization_116/gamma/v/Read/ReadVariableOpNAdam/transformer_encoder_58/layer_normalization_116/beta/v/Read/ReadVariableOpOAdam/transformer_encoder_58/layer_normalization_117/gamma/v/Read/ReadVariableOpNAdam/transformer_encoder_58/layer_normalization_117/beta/v/Read/ReadVariableOp3Adam/rnn_6/lstm_cell_6/kernel/v/Read/ReadVariableOp=Adam/rnn_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOp1Adam/rnn_6/lstm_cell_6/bias/v/Read/ReadVariableOpConst*_
TinX
V2T	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_2654170
è
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_186/kerneldense_186/biasdense_187/kerneldense_187/bias8token_and_position_embedding_59/embedding_118/embeddings8token_and_position_embedding_59/embedding_119/embeddings;transformer_encoder_58/multi_head_attention_58/query/kernel9transformer_encoder_58/multi_head_attention_58/query/bias9transformer_encoder_58/multi_head_attention_58/key/kernel7transformer_encoder_58/multi_head_attention_58/key/bias;transformer_encoder_58/multi_head_attention_58/value/kernel9transformer_encoder_58/multi_head_attention_58/value/biasFtransformer_encoder_58/multi_head_attention_58/attention_output/kernelDtransformer_encoder_58/multi_head_attention_58/attention_output/biasdense_182/kerneldense_182/biasdense_183/kerneldense_183/bias4transformer_encoder_58/layer_normalization_116/gamma3transformer_encoder_58/layer_normalization_116/beta4transformer_encoder_58/layer_normalization_117/gamma3transformer_encoder_58/layer_normalization_117/betarnn_6/lstm_cell_6/kernel"rnn_6/lstm_cell_6/recurrent_kernelrnn_6/lstm_cell_6/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_186/kernel/mAdam/dense_186/bias/mAdam/dense_187/kernel/mAdam/dense_187/bias/m?Adam/token_and_position_embedding_59/embedding_118/embeddings/m?Adam/token_and_position_embedding_59/embedding_119/embeddings/mBAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/m@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/m@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/m>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/mBAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/m@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/mMAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/mKAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/mAdam/dense_182/kernel/mAdam/dense_182/bias/mAdam/dense_183/kernel/mAdam/dense_183/bias/m;Adam/transformer_encoder_58/layer_normalization_116/gamma/m:Adam/transformer_encoder_58/layer_normalization_116/beta/m;Adam/transformer_encoder_58/layer_normalization_117/gamma/m:Adam/transformer_encoder_58/layer_normalization_117/beta/mAdam/rnn_6/lstm_cell_6/kernel/m)Adam/rnn_6/lstm_cell_6/recurrent_kernel/mAdam/rnn_6/lstm_cell_6/bias/mAdam/dense_186/kernel/vAdam/dense_186/bias/vAdam/dense_187/kernel/vAdam/dense_187/bias/v?Adam/token_and_position_embedding_59/embedding_118/embeddings/v?Adam/token_and_position_embedding_59/embedding_119/embeddings/vBAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/v@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/v@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/v>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/vBAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/v@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/vMAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/vKAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/vAdam/dense_182/kernel/vAdam/dense_182/bias/vAdam/dense_183/kernel/vAdam/dense_183/bias/v;Adam/transformer_encoder_58/layer_normalization_116/gamma/v:Adam/transformer_encoder_58/layer_normalization_116/beta/v;Adam/transformer_encoder_58/layer_normalization_117/gamma/v:Adam/transformer_encoder_58/layer_normalization_117/beta/vAdam/rnn_6/lstm_cell_6/kernel/v)Adam/rnn_6/lstm_cell_6/recurrent_kernel/vAdam/rnn_6/lstm_cell_6/bias/v*^
TinW
U2S*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_2654426ºÇ$
É

H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2653822

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
í
Æ
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650210
dense_182_input#
dense_182_2650199:2 
dense_182_2650201: #
dense_183_2650204: 2
dense_183_2650206:2
identity¢!dense_182/StatefulPartitionedCall¢!dense_183/StatefulPartitionedCall
!dense_182/StatefulPartitionedCallStatefulPartitionedCalldense_182_inputdense_182_2650199dense_182_2650201*
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
GPU 2J 8 *O
fJRH
F__inference_dense_182_layer_call_and_return_conditional_losses_2650069
!dense_183/StatefulPartitionedCallStatefulPartitionedCall*dense_182/StatefulPartitionedCall:output:0dense_183_2650204dense_183_2650206*
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
GPU 2J 8 *O
fJRH
F__inference_dense_183_layer_call_and_return_conditional_losses_2650105}
IdentityIdentity*dense_183/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp"^dense_182/StatefulPartitionedCall"^dense_183/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2F
!dense_182/StatefulPartitionedCall!dense_182/StatefulPartitionedCall2F
!dense_183/StatefulPartitionedCall!dense_183/StatefulPartitionedCall:\ X
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)
_user_specified_namedense_182_input
üI

B__inference_rnn_6_layer_call_and_return_conditional_losses_2650917

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	2¸?
,lstm_cell_6_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_6_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_6/BiasAdd/ReadVariableOp¢!lstm_cell_6/MatMul/ReadVariableOp¢#lstm_cell_6/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_2650833*
condR
while_cond_2650832*K
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
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
ß
ô
!model_55_rnn_6_while_cond_2649933:
6model_55_rnn_6_while_model_55_rnn_6_while_loop_counter@
<model_55_rnn_6_while_model_55_rnn_6_while_maximum_iterations$
 model_55_rnn_6_while_placeholder&
"model_55_rnn_6_while_placeholder_1&
"model_55_rnn_6_while_placeholder_2&
"model_55_rnn_6_while_placeholder_3<
8model_55_rnn_6_while_less_model_55_rnn_6_strided_slice_1S
Omodel_55_rnn_6_while_model_55_rnn_6_while_cond_2649933___redundant_placeholder0S
Omodel_55_rnn_6_while_model_55_rnn_6_while_cond_2649933___redundant_placeholder1S
Omodel_55_rnn_6_while_model_55_rnn_6_while_cond_2649933___redundant_placeholder2S
Omodel_55_rnn_6_while_model_55_rnn_6_while_cond_2649933___redundant_placeholder3!
model_55_rnn_6_while_identity

model_55/rnn_6/while/LessLess model_55_rnn_6_while_placeholder8model_55_rnn_6_while_less_model_55_rnn_6_strided_slice_1*
T0*
_output_shapes
: i
model_55/rnn_6/while/IdentityIdentitymodel_55/rnn_6/while/Less:z:0*
T0
*
_output_shapes
: "G
model_55_rnn_6_while_identity&model_55/rnn_6/while/Identity:output:0*(
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
Ò
½
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650172

inputs#
dense_182_2650161:2 
dense_182_2650163: #
dense_183_2650166: 2
dense_183_2650168:2
identity¢!dense_182/StatefulPartitionedCall¢!dense_183/StatefulPartitionedCallû
!dense_182/StatefulPartitionedCallStatefulPartitionedCallinputsdense_182_2650161dense_182_2650163*
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
GPU 2J 8 *O
fJRH
F__inference_dense_182_layer_call_and_return_conditional_losses_2650069
!dense_183/StatefulPartitionedCallStatefulPartitionedCall*dense_182/StatefulPartitionedCall:output:0dense_183_2650166dense_183_2650168*
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
GPU 2J 8 *O
fJRH
F__inference_dense_183_layer_call_and_return_conditional_losses_2650105}
IdentityIdentity*dense_183/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp"^dense_182/StatefulPartitionedCall"^dense_183/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2F
!dense_182/StatefulPartitionedCall!dense_182/StatefulPartitionedCall2F
!dense_183/StatefulPartitionedCall!dense_183/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
É

H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2653790

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
¿
¼
E__inference_model_55_layer_call_and_return_conditional_losses_2652551

inputsX
Ftoken_and_position_embedding_59_embedding_119_embedding_lookup_2652249:.2Y
Ftoken_and_position_embedding_59_embedding_118_embedding_lookup_2652255:	2p
Ztransformer_encoder_58_multi_head_attention_58_query_einsum_einsum_readvariableop_resource:22b
Ptransformer_encoder_58_multi_head_attention_58_query_add_readvariableop_resource:2n
Xtransformer_encoder_58_multi_head_attention_58_key_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_58_multi_head_attention_58_key_add_readvariableop_resource:2p
Ztransformer_encoder_58_multi_head_attention_58_value_einsum_einsum_readvariableop_resource:22b
Ptransformer_encoder_58_multi_head_attention_58_value_add_readvariableop_resource:2{
etransformer_encoder_58_multi_head_attention_58_attention_output_einsum_einsum_readvariableop_resource:22i
[transformer_encoder_58_multi_head_attention_58_attention_output_add_readvariableop_resource:2b
Ttransformer_encoder_58_layer_normalization_116_batchnorm_mul_readvariableop_resource:2^
Ptransformer_encoder_58_layer_normalization_116_batchnorm_readvariableop_resource:2b
Ptransformer_encoder_58_sequential_58_dense_182_tensordot_readvariableop_resource:2 \
Ntransformer_encoder_58_sequential_58_dense_182_biasadd_readvariableop_resource: b
Ptransformer_encoder_58_sequential_58_dense_183_tensordot_readvariableop_resource: 2\
Ntransformer_encoder_58_sequential_58_dense_183_biasadd_readvariableop_resource:2b
Ttransformer_encoder_58_layer_normalization_117_batchnorm_mul_readvariableop_resource:2^
Ptransformer_encoder_58_layer_normalization_117_batchnorm_readvariableop_resource:2C
0rnn_6_lstm_cell_6_matmul_readvariableop_resource:	2¸E
2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource:	.¸@
1rnn_6_lstm_cell_6_biasadd_readvariableop_resource:	¸:
(dense_186_matmul_readvariableop_resource:..7
)dense_186_biasadd_readvariableop_resource:.:
(dense_187_matmul_readvariableop_resource:.7
)dense_187_biasadd_readvariableop_resource:
identity¢ dense_186/BiasAdd/ReadVariableOp¢dense_186/MatMul/ReadVariableOp¢ dense_187/BiasAdd/ReadVariableOp¢dense_187/MatMul/ReadVariableOp¢(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp¢'rnn_6/lstm_cell_6/MatMul/ReadVariableOp¢)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp¢rnn_6/while¢>token_and_position_embedding_59/embedding_118/embedding_lookup¢>token_and_position_embedding_59/embedding_119/embedding_lookup¢Gtransformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOp¢Ktransformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOp¢Gtransformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOp¢Ktransformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOp¢Rtransformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp¢\transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOp¢Otransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOp¢Gtransformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOp¢Qtransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOp¢Gtransformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOp¢Qtransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOp¢Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOp¢Etransformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOp¢Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp[
%token_and_position_embedding_59/ShapeShapeinputs*
T0*
_output_shapes
:
3token_and_position_embedding_59/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
5token_and_position_embedding_59/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5token_and_position_embedding_59/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-token_and_position_embedding_59/strided_sliceStridedSlice.token_and_position_embedding_59/Shape:output:0<token_and_position_embedding_59/strided_slice/stack:output:0>token_and_position_embedding_59/strided_slice/stack_1:output:0>token_and_position_embedding_59/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+token_and_position_embedding_59/range/startConst*
_output_shapes
: *
dtype0*
value	B : m
+token_and_position_embedding_59/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :î
%token_and_position_embedding_59/rangeRange4token_and_position_embedding_59/range/start:output:06token_and_position_embedding_59/strided_slice:output:04token_and_position_embedding_59/range/delta:output:0*
_output_shapes
:.à
>token_and_position_embedding_59/embedding_119/embedding_lookupResourceGatherFtoken_and_position_embedding_59_embedding_119_embedding_lookup_2652249.token_and_position_embedding_59/range:output:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_59/embedding_119/embedding_lookup/2652249*
_output_shapes

:.2*
dtype0 
Gtoken_and_position_embedding_59/embedding_119/embedding_lookup/IdentityIdentityGtoken_and_position_embedding_59/embedding_119/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_59/embedding_119/embedding_lookup/2652249*
_output_shapes

:.2Ð
Itoken_and_position_embedding_59/embedding_119/embedding_lookup/Identity_1IdentityPtoken_and_position_embedding_59/embedding_119/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2
2token_and_position_embedding_59/embedding_118/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.õ
>token_and_position_embedding_59/embedding_118/embedding_lookupResourceGatherFtoken_and_position_embedding_59_embedding_118_embedding_lookup_26522556token_and_position_embedding_59/embedding_118/Cast:y:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_59/embedding_118/embedding_lookup/2652255*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0­
Gtoken_and_position_embedding_59/embedding_118/embedding_lookup/IdentityIdentityGtoken_and_position_embedding_59/embedding_118/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_59/embedding_118/embedding_lookup/2652255*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ý
Itoken_and_position_embedding_59/embedding_118/embedding_lookup/Identity_1IdentityPtoken_and_position_embedding_59/embedding_118/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
#token_and_position_embedding_59/addAddV2Rtoken_and_position_embedding_59/embedding_118/embedding_lookup/Identity_1:output:0Rtoken_and_position_embedding_59/embedding_119/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ð
Qtransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOpReadVariableOpZtransformer_encoder_58_multi_head_attention_58_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0°
Btransformer_encoder_58/multi_head_attention_58/query/einsum/EinsumEinsum'token_and_position_embedding_59/add:z:0Ytransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeØ
Gtransformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOpReadVariableOpPtransformer_encoder_58_multi_head_attention_58_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
8transformer_encoder_58/multi_head_attention_58/query/addAddV2Ktransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum:output:0Otransformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ì
Otransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_58_multi_head_attention_58_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¬
@transformer_encoder_58/multi_head_attention_58/key/einsum/EinsumEinsum'token_and_position_embedding_59/add:z:0Wtransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÔ
Etransformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOpReadVariableOpNtransformer_encoder_58_multi_head_attention_58_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_58/multi_head_attention_58/key/addAddV2Itransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum:output:0Mtransformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ð
Qtransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOpReadVariableOpZtransformer_encoder_58_multi_head_attention_58_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0°
Btransformer_encoder_58/multi_head_attention_58/value/einsum/EinsumEinsum'token_and_position_embedding_59/add:z:0Ytransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeØ
Gtransformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOpReadVariableOpPtransformer_encoder_58_multi_head_attention_58_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
8transformer_encoder_58/multi_head_attention_58/value/addAddV2Ktransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum:output:0Otransformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2y
4transformer_encoder_58/multi_head_attention_58/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ð
2transformer_encoder_58/multi_head_attention_58/MulMul<transformer_encoder_58/multi_head_attention_58/query/add:z:0=transformer_encoder_58/multi_head_attention_58/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
<transformer_encoder_58/multi_head_attention_58/einsum/EinsumEinsum:transformer_encoder_58/multi_head_attention_58/key/add:z:06transformer_encoder_58/multi_head_attention_58/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbeÊ
>transformer_encoder_58/multi_head_attention_58/softmax/SoftmaxSoftmaxEtransformer_encoder_58/multi_head_attention_58/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..²
>transformer_encoder_58/multi_head_attention_58/einsum_1/EinsumEinsumHtransformer_encoder_58/multi_head_attention_58/softmax/Softmax:softmax:0<transformer_encoder_58/multi_head_attention_58/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcd
\transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpetransformer_encoder_58_multi_head_attention_58_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0â
Mtransformer_encoder_58/multi_head_attention_58/attention_output/einsum/EinsumEinsumGtransformer_encoder_58/multi_head_attention_58/einsum_1/Einsum:output:0dtransformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeê
Rtransformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOpReadVariableOp[transformer_encoder_58_multi_head_attention_58_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0¶
Ctransformer_encoder_58/multi_head_attention_58/attention_output/addAddV2Vtransformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum:output:0Ztransformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2u
0transformer_encoder_58/dropout_116/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ï
.transformer_encoder_58/dropout_116/dropout/MulMulGtransformer_encoder_58/multi_head_attention_58/attention_output/add:z:09transformer_encoder_58/dropout_116/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2§
0transformer_encoder_58/dropout_116/dropout/ShapeShapeGtransformer_encoder_58/multi_head_attention_58/attention_output/add:z:0*
T0*
_output_shapes
:Ö
Gtransformer_encoder_58/dropout_116/dropout/random_uniform/RandomUniformRandomUniform9transformer_encoder_58/dropout_116/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0~
9transformer_encoder_58/dropout_116/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
7transformer_encoder_58/dropout_116/dropout/GreaterEqualGreaterEqualPtransformer_encoder_58/dropout_116/dropout/random_uniform/RandomUniform:output:0Btransformer_encoder_58/dropout_116/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¹
/transformer_encoder_58/dropout_116/dropout/CastCast;transformer_encoder_58/dropout_116/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ö
0transformer_encoder_58/dropout_116/dropout/Mul_1Mul2transformer_encoder_58/dropout_116/dropout/Mul:z:03transformer_encoder_58/dropout_116/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
transformer_encoder_58/addAddV2'token_and_position_embedding_59/add:z:04transformer_encoder_58/dropout_116/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Mtransformer_encoder_58/layer_normalization_116/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
;transformer_encoder_58/layer_normalization_116/moments/meanMeantransformer_encoder_58/add:z:0Vtransformer_encoder_58/layer_normalization_116/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Ï
Ctransformer_encoder_58/layer_normalization_116/moments/StopGradientStopGradientDtransformer_encoder_58/layer_normalization_116/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Htransformer_encoder_58/layer_normalization_116/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_58/add:z:0Ltransformer_encoder_58/layer_normalization_116/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Qtransformer_encoder_58/layer_normalization_116/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¸
?transformer_encoder_58/layer_normalization_116/moments/varianceMeanLtransformer_encoder_58/layer_normalization_116/moments/SquaredDifference:z:0Ztransformer_encoder_58/layer_normalization_116/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
>transformer_encoder_58/layer_normalization_116/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
<transformer_encoder_58/layer_normalization_116/batchnorm/addAddV2Htransformer_encoder_58/layer_normalization_116/moments/variance:output:0Gtransformer_encoder_58/layer_normalization_116/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¿
>transformer_encoder_58/layer_normalization_116/batchnorm/RsqrtRsqrt@transformer_encoder_58/layer_normalization_116/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ü
Ktransformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOpReadVariableOpTtransformer_encoder_58_layer_normalization_116_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
<transformer_encoder_58/layer_normalization_116/batchnorm/mulMulBtransformer_encoder_58/layer_normalization_116/batchnorm/Rsqrt:y:0Stransformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ý
>transformer_encoder_58/layer_normalization_116/batchnorm/mul_1Multransformer_encoder_58/add:z:0@transformer_encoder_58/layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
>transformer_encoder_58/layer_normalization_116/batchnorm/mul_2MulDtransformer_encoder_58/layer_normalization_116/moments/mean:output:0@transformer_encoder_58/layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ô
Gtransformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOpReadVariableOpPtransformer_encoder_58_layer_normalization_116_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
<transformer_encoder_58/layer_normalization_116/batchnorm/subSubOtransformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOp:value:0Btransformer_encoder_58/layer_normalization_116/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
>transformer_encoder_58/layer_normalization_116/batchnorm/add_1AddV2Btransformer_encoder_58/layer_normalization_116/batchnorm/mul_1:z:0@transformer_encoder_58/layer_normalization_116/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ø
Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOpReadVariableOpPtransformer_encoder_58_sequential_58_dense_182_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
=transformer_encoder_58/sequential_58/dense_182/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
=transformer_encoder_58/sequential_58/dense_182/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       °
>transformer_encoder_58/sequential_58/dense_182/Tensordot/ShapeShapeBtransformer_encoder_58/layer_normalization_116/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Atransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2GatherV2Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/Shape:output:0Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/free:output:0Otransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Htransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
Ctransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1GatherV2Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/Shape:output:0Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/axes:output:0Qtransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
>transformer_encoder_58/sequential_58/dense_182/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: û
=transformer_encoder_58/sequential_58/dense_182/Tensordot/ProdProdJtransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2:output:0Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/Const:output:0*
T0*
_output_shapes
: 
@transformer_encoder_58/sequential_58/dense_182/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?transformer_encoder_58/sequential_58/dense_182/Tensordot/Prod_1ProdLtransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1:output:0Itransformer_encoder_58/sequential_58/dense_182/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Dtransformer_encoder_58/sequential_58/dense_182/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ø
?transformer_encoder_58/sequential_58/dense_182/Tensordot/concatConcatV2Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/free:output:0Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/axes:output:0Mtransformer_encoder_58/sequential_58/dense_182/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_58/sequential_58/dense_182/Tensordot/stackPackFtransformer_encoder_58/sequential_58/dense_182/Tensordot/Prod:output:0Htransformer_encoder_58/sequential_58/dense_182/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Btransformer_encoder_58/sequential_58/dense_182/Tensordot/transpose	TransposeBtransformer_encoder_58/layer_normalization_116/batchnorm/add_1:z:0Htransformer_encoder_58/sequential_58/dense_182/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
@transformer_encoder_58/sequential_58/dense_182/Tensordot/ReshapeReshapeFtransformer_encoder_58/sequential_58/dense_182/Tensordot/transpose:y:0Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
?transformer_encoder_58/sequential_58/dense_182/Tensordot/MatMulMatMulItransformer_encoder_58/sequential_58/dense_182/Tensordot/Reshape:output:0Otransformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
@transformer_encoder_58/sequential_58/dense_182/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
Atransformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1ConcatV2Jtransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2:output:0Itransformer_encoder_58/sequential_58/dense_182/Tensordot/Const_2:output:0Otransformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
8transformer_encoder_58/sequential_58/dense_182/TensordotReshapeItransformer_encoder_58/sequential_58/dense_182/Tensordot/MatMul:product:0Jtransformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ð
Etransformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOpReadVariableOpNtransformer_encoder_58_sequential_58_dense_182_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
6transformer_encoder_58/sequential_58/dense_182/BiasAddBiasAddAtransformer_encoder_58/sequential_58/dense_182/Tensordot:output:0Mtransformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ²
3transformer_encoder_58/sequential_58/dense_182/ReluRelu?transformer_encoder_58/sequential_58/dense_182/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ø
Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOpReadVariableOpPtransformer_encoder_58_sequential_58_dense_183_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
=transformer_encoder_58/sequential_58/dense_183/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
=transformer_encoder_58/sequential_58/dense_183/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¯
>transformer_encoder_58/sequential_58/dense_183/Tensordot/ShapeShapeAtransformer_encoder_58/sequential_58/dense_182/Relu:activations:0*
T0*
_output_shapes
:
Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Atransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2GatherV2Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/Shape:output:0Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/free:output:0Otransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Htransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
Ctransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1GatherV2Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/Shape:output:0Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/axes:output:0Qtransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
>transformer_encoder_58/sequential_58/dense_183/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: û
=transformer_encoder_58/sequential_58/dense_183/Tensordot/ProdProdJtransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2:output:0Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/Const:output:0*
T0*
_output_shapes
: 
@transformer_encoder_58/sequential_58/dense_183/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?transformer_encoder_58/sequential_58/dense_183/Tensordot/Prod_1ProdLtransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1:output:0Itransformer_encoder_58/sequential_58/dense_183/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Dtransformer_encoder_58/sequential_58/dense_183/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ø
?transformer_encoder_58/sequential_58/dense_183/Tensordot/concatConcatV2Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/free:output:0Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/axes:output:0Mtransformer_encoder_58/sequential_58/dense_183/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_58/sequential_58/dense_183/Tensordot/stackPackFtransformer_encoder_58/sequential_58/dense_183/Tensordot/Prod:output:0Htransformer_encoder_58/sequential_58/dense_183/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Btransformer_encoder_58/sequential_58/dense_183/Tensordot/transpose	TransposeAtransformer_encoder_58/sequential_58/dense_182/Relu:activations:0Htransformer_encoder_58/sequential_58/dense_183/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
@transformer_encoder_58/sequential_58/dense_183/Tensordot/ReshapeReshapeFtransformer_encoder_58/sequential_58/dense_183/Tensordot/transpose:y:0Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
?transformer_encoder_58/sequential_58/dense_183/Tensordot/MatMulMatMulItransformer_encoder_58/sequential_58/dense_183/Tensordot/Reshape:output:0Otransformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
@transformer_encoder_58/sequential_58/dense_183/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
Atransformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1ConcatV2Jtransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2:output:0Itransformer_encoder_58/sequential_58/dense_183/Tensordot/Const_2:output:0Otransformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
8transformer_encoder_58/sequential_58/dense_183/TensordotReshapeItransformer_encoder_58/sequential_58/dense_183/Tensordot/MatMul:product:0Jtransformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ð
Etransformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOpReadVariableOpNtransformer_encoder_58_sequential_58_dense_183_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
6transformer_encoder_58/sequential_58/dense_183/BiasAddBiasAddAtransformer_encoder_58/sequential_58/dense_183/Tensordot:output:0Mtransformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2u
0transformer_encoder_58/dropout_117/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ç
.transformer_encoder_58/dropout_117/dropout/MulMul?transformer_encoder_58/sequential_58/dense_183/BiasAdd:output:09transformer_encoder_58/dropout_117/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
0transformer_encoder_58/dropout_117/dropout/ShapeShape?transformer_encoder_58/sequential_58/dense_183/BiasAdd:output:0*
T0*
_output_shapes
:Ö
Gtransformer_encoder_58/dropout_117/dropout/random_uniform/RandomUniformRandomUniform9transformer_encoder_58/dropout_117/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0~
9transformer_encoder_58/dropout_117/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
7transformer_encoder_58/dropout_117/dropout/GreaterEqualGreaterEqualPtransformer_encoder_58/dropout_117/dropout/random_uniform/RandomUniform:output:0Btransformer_encoder_58/dropout_117/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¹
/transformer_encoder_58/dropout_117/dropout/CastCast;transformer_encoder_58/dropout_117/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ö
0transformer_encoder_58/dropout_117/dropout/Mul_1Mul2transformer_encoder_58/dropout_117/dropout/Mul:z:03transformer_encoder_58/dropout_117/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Õ
transformer_encoder_58/add_1AddV2Btransformer_encoder_58/layer_normalization_116/batchnorm/add_1:z:04transformer_encoder_58/dropout_117/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Mtransformer_encoder_58/layer_normalization_117/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
;transformer_encoder_58/layer_normalization_117/moments/meanMean transformer_encoder_58/add_1:z:0Vtransformer_encoder_58/layer_normalization_117/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Ï
Ctransformer_encoder_58/layer_normalization_117/moments/StopGradientStopGradientDtransformer_encoder_58/layer_normalization_117/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Htransformer_encoder_58/layer_normalization_117/moments/SquaredDifferenceSquaredDifference transformer_encoder_58/add_1:z:0Ltransformer_encoder_58/layer_normalization_117/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Qtransformer_encoder_58/layer_normalization_117/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¸
?transformer_encoder_58/layer_normalization_117/moments/varianceMeanLtransformer_encoder_58/layer_normalization_117/moments/SquaredDifference:z:0Ztransformer_encoder_58/layer_normalization_117/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
>transformer_encoder_58/layer_normalization_117/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
<transformer_encoder_58/layer_normalization_117/batchnorm/addAddV2Htransformer_encoder_58/layer_normalization_117/moments/variance:output:0Gtransformer_encoder_58/layer_normalization_117/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¿
>transformer_encoder_58/layer_normalization_117/batchnorm/RsqrtRsqrt@transformer_encoder_58/layer_normalization_117/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ü
Ktransformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOpReadVariableOpTtransformer_encoder_58_layer_normalization_117_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
<transformer_encoder_58/layer_normalization_117/batchnorm/mulMulBtransformer_encoder_58/layer_normalization_117/batchnorm/Rsqrt:y:0Stransformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ß
>transformer_encoder_58/layer_normalization_117/batchnorm/mul_1Mul transformer_encoder_58/add_1:z:0@transformer_encoder_58/layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
>transformer_encoder_58/layer_normalization_117/batchnorm/mul_2MulDtransformer_encoder_58/layer_normalization_117/moments/mean:output:0@transformer_encoder_58/layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ô
Gtransformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOpReadVariableOpPtransformer_encoder_58_layer_normalization_117_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
<transformer_encoder_58/layer_normalization_117/batchnorm/subSubOtransformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOp:value:0Btransformer_encoder_58/layer_normalization_117/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
>transformer_encoder_58/layer_normalization_117/batchnorm/add_1AddV2Btransformer_encoder_58/layer_normalization_117/batchnorm/mul_1:z:0@transformer_encoder_58/layer_normalization_117/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2}
rnn_6/ShapeShapeBtransformer_encoder_58/layer_normalization_117/batchnorm/add_1:z:0*
T0*
_output_shapes
:c
rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
rnn_6/strided_sliceStridedSlicernn_6/Shape:output:0"rnn_6/strided_slice/stack:output:0$rnn_6/strided_slice/stack_1:output:0$rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_6/zeros/packedPackrnn_6/strided_slice:output:0rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_6/zerosFillrnn_6/zeros/packed:output:0rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
rnn_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_6/zeros_1/packedPackrnn_6/strided_slice:output:0rnn_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
rnn_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_6/zeros_1Fillrnn_6/zeros_1/packed:output:0rnn_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.i
rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          µ
rnn_6/transpose	TransposeBtransformer_encoder_58/layer_normalization_117/batchnorm/add_1:z:0rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:.ÿÿÿÿÿÿÿÿÿ2P
rnn_6/Shape_1Shapernn_6/transpose:y:0*
T0*
_output_shapes
:e
rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
rnn_6/strided_slice_1StridedSlicernn_6/Shape_1:output:0$rnn_6/strided_slice_1/stack:output:0&rnn_6/strided_slice_1/stack_1:output:0&rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
rnn_6/TensorArrayV2TensorListReserve*rnn_6/TensorArrayV2/element_shape:output:0rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ò
-rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_6/transpose:y:0Drnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_6/strided_slice_2StridedSlicernn_6/transpose:y:0$rnn_6/strided_slice_2/stack:output:0&rnn_6/strided_slice_2/stack_1:output:0&rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
'rnn_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp0rnn_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¦
rnn_6/lstm_cell_6/MatMulMatMulrnn_6/strided_slice_2:output:0/rnn_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0 
rnn_6/lstm_cell_6/MatMul_1MatMulrnn_6/zeros:output:01rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
rnn_6/lstm_cell_6/addAddV2"rnn_6/lstm_cell_6/MatMul:product:0$rnn_6/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp1rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¤
rnn_6/lstm_cell_6/BiasAddBiasAddrnn_6/lstm_cell_6/add:z:00rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!rnn_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
rnn_6/lstm_cell_6/splitSplit*rnn_6/lstm_cell_6/split/split_dim:output:0"rnn_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
rnn_6/lstm_cell_6/SigmoidSigmoid rnn_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_6/lstm_cell_6/Sigmoid_1Sigmoid rnn_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/lstm_cell_6/mulMulrnn_6/lstm_cell_6/Sigmoid_1:y:0rnn_6/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn_6/lstm_cell_6/TanhTanh rnn_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/lstm_cell_6/mul_1Mulrnn_6/lstm_cell_6/Sigmoid:y:0rnn_6/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/lstm_cell_6/add_1AddV2rnn_6/lstm_cell_6/mul:z:0rnn_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_6/lstm_cell_6/Sigmoid_2Sigmoid rnn_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
rnn_6/lstm_cell_6/Tanh_1Tanhrnn_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/lstm_cell_6/mul_2Mulrnn_6/lstm_cell_6/Sigmoid_2:y:0rnn_6/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.t
#rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   d
"rnn_6/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
rnn_6/TensorArrayV2_1TensorListReserve,rnn_6/TensorArrayV2_1/element_shape:output:0+rnn_6/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Õ
rnn_6/whileWhile!rnn_6/while/loop_counter:output:0'rnn_6/while/maximum_iterations:output:0rnn_6/time:output:0rnn_6/TensorArrayV2_1:handle:0rnn_6/zeros:output:0rnn_6/zeros_1:output:0rnn_6/strided_slice_1:output:0=rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:00rnn_6_lstm_cell_6_matmul_readvariableop_resource2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource1rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
rnn_6_while_body_2652454*$
condR
rnn_6_while_cond_2652453*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
6rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   è
(rnn_6/TensorArrayV2Stack/TensorListStackTensorListStackrnn_6/while:output:3?rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsn
rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¥
rnn_6/strided_slice_3StridedSlice1rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_6/strided_slice_3/stack:output:0&rnn_6/strided_slice_3/stack_1:output:0&rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maskk
rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
rnn_6/transpose_1	Transpose1rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_186/MatMul/ReadVariableOpReadVariableOp(dense_186_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0
dense_186/MatMulMatMulrnn_6/strided_slice_3:output:0'dense_186/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 dense_186/BiasAdd/ReadVariableOpReadVariableOp)dense_186_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_186/BiasAddBiasAdddense_186/MatMul:product:0(dense_186/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.d
dense_186/ReluReludense_186/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_187/MatMul/ReadVariableOpReadVariableOp(dense_187_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_187/MatMulMatMuldense_186/Relu:activations:0'dense_187/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_187/BiasAdd/ReadVariableOpReadVariableOp)dense_187_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_187/BiasAddBiasAdddense_187/MatMul:product:0(dense_187/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_187/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
NoOpNoOp!^dense_186/BiasAdd/ReadVariableOp ^dense_186/MatMul/ReadVariableOp!^dense_187/BiasAdd/ReadVariableOp ^dense_187/MatMul/ReadVariableOp)^rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp(^rnn_6/lstm_cell_6/MatMul/ReadVariableOp*^rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp^rnn_6/while?^token_and_position_embedding_59/embedding_118/embedding_lookup?^token_and_position_embedding_59/embedding_119/embedding_lookupH^transformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOpL^transformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOpH^transformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOpL^transformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOpS^transformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp]^transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpF^transformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOpP^transformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOpH^transformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOpR^transformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOpH^transformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOpR^transformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOpF^transformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOpH^transformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOpF^transformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOpH^transformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_186/BiasAdd/ReadVariableOp dense_186/BiasAdd/ReadVariableOp2B
dense_186/MatMul/ReadVariableOpdense_186/MatMul/ReadVariableOp2D
 dense_187/BiasAdd/ReadVariableOp dense_187/BiasAdd/ReadVariableOp2B
dense_187/MatMul/ReadVariableOpdense_187/MatMul/ReadVariableOp2T
(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp2R
'rnn_6/lstm_cell_6/MatMul/ReadVariableOp'rnn_6/lstm_cell_6/MatMul/ReadVariableOp2V
)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp2
rnn_6/whilernn_6/while2
>token_and_position_embedding_59/embedding_118/embedding_lookup>token_and_position_embedding_59/embedding_118/embedding_lookup2
>token_and_position_embedding_59/embedding_119/embedding_lookup>token_and_position_embedding_59/embedding_119/embedding_lookup2
Gtransformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOpGtransformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOp2
Ktransformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOpKtransformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOp2
Gtransformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOpGtransformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOp2
Ktransformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOpKtransformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOp2¨
Rtransformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOpRtransformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp2¼
\transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp\transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOpEtransformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOp2¢
Otransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOpOtransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOp2
Gtransformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOpGtransformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOp2¦
Qtransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOpQtransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOp2
Gtransformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOpGtransformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOp2¦
Qtransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOpQtransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOpEtransformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOp2
Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOpGtransformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOp2
Etransformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOpEtransformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOp2
Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOpGtransformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
¥
ý
F__inference_dense_182_layer_call_and_return_conditional_losses_2653862

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
Í
Û
/__inference_sequential_58_layer_call_fn_2650123
dense_182_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_182_inputunknown	unknown_0	unknown_1	unknown_2*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650112s
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
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)
_user_specified_namedense_182_input
º
È
while_cond_2650832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2650832___redundant_placeholder05
1while_while_cond_2650832___redundant_placeholder15
1while_while_cond_2650832___redundant_placeholder25
1while_while_cond_2650832___redundant_placeholder3
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
Í
Û
/__inference_sequential_58_layer_call_fn_2650196
dense_182_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_182_inputunknown	unknown_0	unknown_1	unknown_2*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650172s
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
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)
_user_specified_namedense_182_input
º
È
while_cond_2653316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2653316___redundant_placeholder05
1while_while_cond_2653316___redundant_placeholder15
1while_while_cond_2653316___redundant_placeholder25
1while_while_cond_2653316___redundant_placeholder3
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
º
È
while_cond_2651104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2651104___redundant_placeholder05
1while_while_cond_2651104___redundant_placeholder15
1while_while_cond_2651104___redundant_placeholder25
1while_while_cond_2651104___redundant_placeholder3
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
Ú
¸
8__inference_transformer_encoder_58_layer_call_fn_2652658

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
identity¢StatefulPartitionedCall§
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
GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2651378s
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
Ýú
¼
E__inference_model_55_layer_call_and_return_conditional_losses_2652238

inputsX
Ftoken_and_position_embedding_59_embedding_119_embedding_lookup_2651949:.2Y
Ftoken_and_position_embedding_59_embedding_118_embedding_lookup_2651955:	2p
Ztransformer_encoder_58_multi_head_attention_58_query_einsum_einsum_readvariableop_resource:22b
Ptransformer_encoder_58_multi_head_attention_58_query_add_readvariableop_resource:2n
Xtransformer_encoder_58_multi_head_attention_58_key_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_58_multi_head_attention_58_key_add_readvariableop_resource:2p
Ztransformer_encoder_58_multi_head_attention_58_value_einsum_einsum_readvariableop_resource:22b
Ptransformer_encoder_58_multi_head_attention_58_value_add_readvariableop_resource:2{
etransformer_encoder_58_multi_head_attention_58_attention_output_einsum_einsum_readvariableop_resource:22i
[transformer_encoder_58_multi_head_attention_58_attention_output_add_readvariableop_resource:2b
Ttransformer_encoder_58_layer_normalization_116_batchnorm_mul_readvariableop_resource:2^
Ptransformer_encoder_58_layer_normalization_116_batchnorm_readvariableop_resource:2b
Ptransformer_encoder_58_sequential_58_dense_182_tensordot_readvariableop_resource:2 \
Ntransformer_encoder_58_sequential_58_dense_182_biasadd_readvariableop_resource: b
Ptransformer_encoder_58_sequential_58_dense_183_tensordot_readvariableop_resource: 2\
Ntransformer_encoder_58_sequential_58_dense_183_biasadd_readvariableop_resource:2b
Ttransformer_encoder_58_layer_normalization_117_batchnorm_mul_readvariableop_resource:2^
Ptransformer_encoder_58_layer_normalization_117_batchnorm_readvariableop_resource:2C
0rnn_6_lstm_cell_6_matmul_readvariableop_resource:	2¸E
2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource:	.¸@
1rnn_6_lstm_cell_6_biasadd_readvariableop_resource:	¸:
(dense_186_matmul_readvariableop_resource:..7
)dense_186_biasadd_readvariableop_resource:.:
(dense_187_matmul_readvariableop_resource:.7
)dense_187_biasadd_readvariableop_resource:
identity¢ dense_186/BiasAdd/ReadVariableOp¢dense_186/MatMul/ReadVariableOp¢ dense_187/BiasAdd/ReadVariableOp¢dense_187/MatMul/ReadVariableOp¢(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp¢'rnn_6/lstm_cell_6/MatMul/ReadVariableOp¢)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp¢rnn_6/while¢>token_and_position_embedding_59/embedding_118/embedding_lookup¢>token_and_position_embedding_59/embedding_119/embedding_lookup¢Gtransformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOp¢Ktransformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOp¢Gtransformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOp¢Ktransformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOp¢Rtransformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp¢\transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOp¢Otransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOp¢Gtransformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOp¢Qtransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOp¢Gtransformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOp¢Qtransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOp¢Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOp¢Etransformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOp¢Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp[
%token_and_position_embedding_59/ShapeShapeinputs*
T0*
_output_shapes
:
3token_and_position_embedding_59/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
5token_and_position_embedding_59/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5token_and_position_embedding_59/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-token_and_position_embedding_59/strided_sliceStridedSlice.token_and_position_embedding_59/Shape:output:0<token_and_position_embedding_59/strided_slice/stack:output:0>token_and_position_embedding_59/strided_slice/stack_1:output:0>token_and_position_embedding_59/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+token_and_position_embedding_59/range/startConst*
_output_shapes
: *
dtype0*
value	B : m
+token_and_position_embedding_59/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :î
%token_and_position_embedding_59/rangeRange4token_and_position_embedding_59/range/start:output:06token_and_position_embedding_59/strided_slice:output:04token_and_position_embedding_59/range/delta:output:0*
_output_shapes
:.à
>token_and_position_embedding_59/embedding_119/embedding_lookupResourceGatherFtoken_and_position_embedding_59_embedding_119_embedding_lookup_2651949.token_and_position_embedding_59/range:output:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_59/embedding_119/embedding_lookup/2651949*
_output_shapes

:.2*
dtype0 
Gtoken_and_position_embedding_59/embedding_119/embedding_lookup/IdentityIdentityGtoken_and_position_embedding_59/embedding_119/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_59/embedding_119/embedding_lookup/2651949*
_output_shapes

:.2Ð
Itoken_and_position_embedding_59/embedding_119/embedding_lookup/Identity_1IdentityPtoken_and_position_embedding_59/embedding_119/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2
2token_and_position_embedding_59/embedding_118/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.õ
>token_and_position_embedding_59/embedding_118/embedding_lookupResourceGatherFtoken_and_position_embedding_59_embedding_118_embedding_lookup_26519556token_and_position_embedding_59/embedding_118/Cast:y:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_59/embedding_118/embedding_lookup/2651955*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0­
Gtoken_and_position_embedding_59/embedding_118/embedding_lookup/IdentityIdentityGtoken_and_position_embedding_59/embedding_118/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_59/embedding_118/embedding_lookup/2651955*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ý
Itoken_and_position_embedding_59/embedding_118/embedding_lookup/Identity_1IdentityPtoken_and_position_embedding_59/embedding_118/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
#token_and_position_embedding_59/addAddV2Rtoken_and_position_embedding_59/embedding_118/embedding_lookup/Identity_1:output:0Rtoken_and_position_embedding_59/embedding_119/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ð
Qtransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOpReadVariableOpZtransformer_encoder_58_multi_head_attention_58_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0°
Btransformer_encoder_58/multi_head_attention_58/query/einsum/EinsumEinsum'token_and_position_embedding_59/add:z:0Ytransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeØ
Gtransformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOpReadVariableOpPtransformer_encoder_58_multi_head_attention_58_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
8transformer_encoder_58/multi_head_attention_58/query/addAddV2Ktransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum:output:0Otransformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ì
Otransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_58_multi_head_attention_58_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¬
@transformer_encoder_58/multi_head_attention_58/key/einsum/EinsumEinsum'token_and_position_embedding_59/add:z:0Wtransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÔ
Etransformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOpReadVariableOpNtransformer_encoder_58_multi_head_attention_58_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_58/multi_head_attention_58/key/addAddV2Itransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum:output:0Mtransformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ð
Qtransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOpReadVariableOpZtransformer_encoder_58_multi_head_attention_58_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0°
Btransformer_encoder_58/multi_head_attention_58/value/einsum/EinsumEinsum'token_and_position_embedding_59/add:z:0Ytransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeØ
Gtransformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOpReadVariableOpPtransformer_encoder_58_multi_head_attention_58_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
8transformer_encoder_58/multi_head_attention_58/value/addAddV2Ktransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum:output:0Otransformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2y
4transformer_encoder_58/multi_head_attention_58/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ð
2transformer_encoder_58/multi_head_attention_58/MulMul<transformer_encoder_58/multi_head_attention_58/query/add:z:0=transformer_encoder_58/multi_head_attention_58/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
<transformer_encoder_58/multi_head_attention_58/einsum/EinsumEinsum:transformer_encoder_58/multi_head_attention_58/key/add:z:06transformer_encoder_58/multi_head_attention_58/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbeÊ
>transformer_encoder_58/multi_head_attention_58/softmax/SoftmaxSoftmaxEtransformer_encoder_58/multi_head_attention_58/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..Ï
?transformer_encoder_58/multi_head_attention_58/dropout/IdentityIdentityHtransformer_encoder_58/multi_head_attention_58/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..²
>transformer_encoder_58/multi_head_attention_58/einsum_1/EinsumEinsumHtransformer_encoder_58/multi_head_attention_58/dropout/Identity:output:0<transformer_encoder_58/multi_head_attention_58/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcd
\transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpetransformer_encoder_58_multi_head_attention_58_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0â
Mtransformer_encoder_58/multi_head_attention_58/attention_output/einsum/EinsumEinsumGtransformer_encoder_58/multi_head_attention_58/einsum_1/Einsum:output:0dtransformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeê
Rtransformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOpReadVariableOp[transformer_encoder_58_multi_head_attention_58_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0¶
Ctransformer_encoder_58/multi_head_attention_58/attention_output/addAddV2Vtransformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum:output:0Ztransformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¶
+transformer_encoder_58/dropout_116/IdentityIdentityGtransformer_encoder_58/multi_head_attention_58/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
transformer_encoder_58/addAddV2'token_and_position_embedding_59/add:z:04transformer_encoder_58/dropout_116/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Mtransformer_encoder_58/layer_normalization_116/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
;transformer_encoder_58/layer_normalization_116/moments/meanMeantransformer_encoder_58/add:z:0Vtransformer_encoder_58/layer_normalization_116/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Ï
Ctransformer_encoder_58/layer_normalization_116/moments/StopGradientStopGradientDtransformer_encoder_58/layer_normalization_116/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Htransformer_encoder_58/layer_normalization_116/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_58/add:z:0Ltransformer_encoder_58/layer_normalization_116/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Qtransformer_encoder_58/layer_normalization_116/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¸
?transformer_encoder_58/layer_normalization_116/moments/varianceMeanLtransformer_encoder_58/layer_normalization_116/moments/SquaredDifference:z:0Ztransformer_encoder_58/layer_normalization_116/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
>transformer_encoder_58/layer_normalization_116/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
<transformer_encoder_58/layer_normalization_116/batchnorm/addAddV2Htransformer_encoder_58/layer_normalization_116/moments/variance:output:0Gtransformer_encoder_58/layer_normalization_116/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¿
>transformer_encoder_58/layer_normalization_116/batchnorm/RsqrtRsqrt@transformer_encoder_58/layer_normalization_116/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ü
Ktransformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOpReadVariableOpTtransformer_encoder_58_layer_normalization_116_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
<transformer_encoder_58/layer_normalization_116/batchnorm/mulMulBtransformer_encoder_58/layer_normalization_116/batchnorm/Rsqrt:y:0Stransformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ý
>transformer_encoder_58/layer_normalization_116/batchnorm/mul_1Multransformer_encoder_58/add:z:0@transformer_encoder_58/layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
>transformer_encoder_58/layer_normalization_116/batchnorm/mul_2MulDtransformer_encoder_58/layer_normalization_116/moments/mean:output:0@transformer_encoder_58/layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ô
Gtransformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOpReadVariableOpPtransformer_encoder_58_layer_normalization_116_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
<transformer_encoder_58/layer_normalization_116/batchnorm/subSubOtransformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOp:value:0Btransformer_encoder_58/layer_normalization_116/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
>transformer_encoder_58/layer_normalization_116/batchnorm/add_1AddV2Btransformer_encoder_58/layer_normalization_116/batchnorm/mul_1:z:0@transformer_encoder_58/layer_normalization_116/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ø
Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOpReadVariableOpPtransformer_encoder_58_sequential_58_dense_182_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
=transformer_encoder_58/sequential_58/dense_182/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
=transformer_encoder_58/sequential_58/dense_182/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       °
>transformer_encoder_58/sequential_58/dense_182/Tensordot/ShapeShapeBtransformer_encoder_58/layer_normalization_116/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Atransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2GatherV2Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/Shape:output:0Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/free:output:0Otransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Htransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
Ctransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1GatherV2Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/Shape:output:0Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/axes:output:0Qtransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
>transformer_encoder_58/sequential_58/dense_182/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: û
=transformer_encoder_58/sequential_58/dense_182/Tensordot/ProdProdJtransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2:output:0Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/Const:output:0*
T0*
_output_shapes
: 
@transformer_encoder_58/sequential_58/dense_182/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?transformer_encoder_58/sequential_58/dense_182/Tensordot/Prod_1ProdLtransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1:output:0Itransformer_encoder_58/sequential_58/dense_182/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Dtransformer_encoder_58/sequential_58/dense_182/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ø
?transformer_encoder_58/sequential_58/dense_182/Tensordot/concatConcatV2Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/free:output:0Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/axes:output:0Mtransformer_encoder_58/sequential_58/dense_182/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_58/sequential_58/dense_182/Tensordot/stackPackFtransformer_encoder_58/sequential_58/dense_182/Tensordot/Prod:output:0Htransformer_encoder_58/sequential_58/dense_182/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Btransformer_encoder_58/sequential_58/dense_182/Tensordot/transpose	TransposeBtransformer_encoder_58/layer_normalization_116/batchnorm/add_1:z:0Htransformer_encoder_58/sequential_58/dense_182/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
@transformer_encoder_58/sequential_58/dense_182/Tensordot/ReshapeReshapeFtransformer_encoder_58/sequential_58/dense_182/Tensordot/transpose:y:0Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
?transformer_encoder_58/sequential_58/dense_182/Tensordot/MatMulMatMulItransformer_encoder_58/sequential_58/dense_182/Tensordot/Reshape:output:0Otransformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
@transformer_encoder_58/sequential_58/dense_182/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Ftransformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
Atransformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1ConcatV2Jtransformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2:output:0Itransformer_encoder_58/sequential_58/dense_182/Tensordot/Const_2:output:0Otransformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
8transformer_encoder_58/sequential_58/dense_182/TensordotReshapeItransformer_encoder_58/sequential_58/dense_182/Tensordot/MatMul:product:0Jtransformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ð
Etransformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOpReadVariableOpNtransformer_encoder_58_sequential_58_dense_182_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
6transformer_encoder_58/sequential_58/dense_182/BiasAddBiasAddAtransformer_encoder_58/sequential_58/dense_182/Tensordot:output:0Mtransformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ²
3transformer_encoder_58/sequential_58/dense_182/ReluRelu?transformer_encoder_58/sequential_58/dense_182/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ø
Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOpReadVariableOpPtransformer_encoder_58_sequential_58_dense_183_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
=transformer_encoder_58/sequential_58/dense_183/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
=transformer_encoder_58/sequential_58/dense_183/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¯
>transformer_encoder_58/sequential_58/dense_183/Tensordot/ShapeShapeAtransformer_encoder_58/sequential_58/dense_182/Relu:activations:0*
T0*
_output_shapes
:
Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Atransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2GatherV2Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/Shape:output:0Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/free:output:0Otransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Htransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
Ctransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1GatherV2Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/Shape:output:0Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/axes:output:0Qtransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
>transformer_encoder_58/sequential_58/dense_183/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: û
=transformer_encoder_58/sequential_58/dense_183/Tensordot/ProdProdJtransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2:output:0Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/Const:output:0*
T0*
_output_shapes
: 
@transformer_encoder_58/sequential_58/dense_183/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?transformer_encoder_58/sequential_58/dense_183/Tensordot/Prod_1ProdLtransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1:output:0Itransformer_encoder_58/sequential_58/dense_183/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Dtransformer_encoder_58/sequential_58/dense_183/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ø
?transformer_encoder_58/sequential_58/dense_183/Tensordot/concatConcatV2Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/free:output:0Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/axes:output:0Mtransformer_encoder_58/sequential_58/dense_183/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_58/sequential_58/dense_183/Tensordot/stackPackFtransformer_encoder_58/sequential_58/dense_183/Tensordot/Prod:output:0Htransformer_encoder_58/sequential_58/dense_183/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Btransformer_encoder_58/sequential_58/dense_183/Tensordot/transpose	TransposeAtransformer_encoder_58/sequential_58/dense_182/Relu:activations:0Htransformer_encoder_58/sequential_58/dense_183/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
@transformer_encoder_58/sequential_58/dense_183/Tensordot/ReshapeReshapeFtransformer_encoder_58/sequential_58/dense_183/Tensordot/transpose:y:0Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
?transformer_encoder_58/sequential_58/dense_183/Tensordot/MatMulMatMulItransformer_encoder_58/sequential_58/dense_183/Tensordot/Reshape:output:0Otransformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
@transformer_encoder_58/sequential_58/dense_183/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Ftransformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
Atransformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1ConcatV2Jtransformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2:output:0Itransformer_encoder_58/sequential_58/dense_183/Tensordot/Const_2:output:0Otransformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
8transformer_encoder_58/sequential_58/dense_183/TensordotReshapeItransformer_encoder_58/sequential_58/dense_183/Tensordot/MatMul:product:0Jtransformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ð
Etransformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOpReadVariableOpNtransformer_encoder_58_sequential_58_dense_183_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
6transformer_encoder_58/sequential_58/dense_183/BiasAddBiasAddAtransformer_encoder_58/sequential_58/dense_183/Tensordot:output:0Mtransformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2®
+transformer_encoder_58/dropout_117/IdentityIdentity?transformer_encoder_58/sequential_58/dense_183/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Õ
transformer_encoder_58/add_1AddV2Btransformer_encoder_58/layer_normalization_116/batchnorm/add_1:z:04transformer_encoder_58/dropout_117/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Mtransformer_encoder_58/layer_normalization_117/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
;transformer_encoder_58/layer_normalization_117/moments/meanMean transformer_encoder_58/add_1:z:0Vtransformer_encoder_58/layer_normalization_117/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Ï
Ctransformer_encoder_58/layer_normalization_117/moments/StopGradientStopGradientDtransformer_encoder_58/layer_normalization_117/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Htransformer_encoder_58/layer_normalization_117/moments/SquaredDifferenceSquaredDifference transformer_encoder_58/add_1:z:0Ltransformer_encoder_58/layer_normalization_117/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Qtransformer_encoder_58/layer_normalization_117/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¸
?transformer_encoder_58/layer_normalization_117/moments/varianceMeanLtransformer_encoder_58/layer_normalization_117/moments/SquaredDifference:z:0Ztransformer_encoder_58/layer_normalization_117/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
>transformer_encoder_58/layer_normalization_117/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
<transformer_encoder_58/layer_normalization_117/batchnorm/addAddV2Htransformer_encoder_58/layer_normalization_117/moments/variance:output:0Gtransformer_encoder_58/layer_normalization_117/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¿
>transformer_encoder_58/layer_normalization_117/batchnorm/RsqrtRsqrt@transformer_encoder_58/layer_normalization_117/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ü
Ktransformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOpReadVariableOpTtransformer_encoder_58_layer_normalization_117_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
<transformer_encoder_58/layer_normalization_117/batchnorm/mulMulBtransformer_encoder_58/layer_normalization_117/batchnorm/Rsqrt:y:0Stransformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ß
>transformer_encoder_58/layer_normalization_117/batchnorm/mul_1Mul transformer_encoder_58/add_1:z:0@transformer_encoder_58/layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
>transformer_encoder_58/layer_normalization_117/batchnorm/mul_2MulDtransformer_encoder_58/layer_normalization_117/moments/mean:output:0@transformer_encoder_58/layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ô
Gtransformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOpReadVariableOpPtransformer_encoder_58_layer_normalization_117_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
<transformer_encoder_58/layer_normalization_117/batchnorm/subSubOtransformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOp:value:0Btransformer_encoder_58/layer_normalization_117/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
>transformer_encoder_58/layer_normalization_117/batchnorm/add_1AddV2Btransformer_encoder_58/layer_normalization_117/batchnorm/mul_1:z:0@transformer_encoder_58/layer_normalization_117/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2}
rnn_6/ShapeShapeBtransformer_encoder_58/layer_normalization_117/batchnorm/add_1:z:0*
T0*
_output_shapes
:c
rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
rnn_6/strided_sliceStridedSlicernn_6/Shape:output:0"rnn_6/strided_slice/stack:output:0$rnn_6/strided_slice/stack_1:output:0$rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_6/zeros/packedPackrnn_6/strided_slice:output:0rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_6/zerosFillrnn_6/zeros/packed:output:0rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
rnn_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_6/zeros_1/packedPackrnn_6/strided_slice:output:0rnn_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
rnn_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_6/zeros_1Fillrnn_6/zeros_1/packed:output:0rnn_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.i
rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          µ
rnn_6/transpose	TransposeBtransformer_encoder_58/layer_normalization_117/batchnorm/add_1:z:0rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:.ÿÿÿÿÿÿÿÿÿ2P
rnn_6/Shape_1Shapernn_6/transpose:y:0*
T0*
_output_shapes
:e
rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
rnn_6/strided_slice_1StridedSlicernn_6/Shape_1:output:0$rnn_6/strided_slice_1/stack:output:0&rnn_6/strided_slice_1/stack_1:output:0&rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
rnn_6/TensorArrayV2TensorListReserve*rnn_6/TensorArrayV2/element_shape:output:0rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ò
-rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_6/transpose:y:0Drnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_6/strided_slice_2StridedSlicernn_6/transpose:y:0$rnn_6/strided_slice_2/stack:output:0&rnn_6/strided_slice_2/stack_1:output:0&rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
'rnn_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp0rnn_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¦
rnn_6/lstm_cell_6/MatMulMatMulrnn_6/strided_slice_2:output:0/rnn_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0 
rnn_6/lstm_cell_6/MatMul_1MatMulrnn_6/zeros:output:01rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
rnn_6/lstm_cell_6/addAddV2"rnn_6/lstm_cell_6/MatMul:product:0$rnn_6/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp1rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¤
rnn_6/lstm_cell_6/BiasAddBiasAddrnn_6/lstm_cell_6/add:z:00rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!rnn_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
rnn_6/lstm_cell_6/splitSplit*rnn_6/lstm_cell_6/split/split_dim:output:0"rnn_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
rnn_6/lstm_cell_6/SigmoidSigmoid rnn_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_6/lstm_cell_6/Sigmoid_1Sigmoid rnn_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/lstm_cell_6/mulMulrnn_6/lstm_cell_6/Sigmoid_1:y:0rnn_6/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn_6/lstm_cell_6/TanhTanh rnn_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/lstm_cell_6/mul_1Mulrnn_6/lstm_cell_6/Sigmoid:y:0rnn_6/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/lstm_cell_6/add_1AddV2rnn_6/lstm_cell_6/mul:z:0rnn_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_6/lstm_cell_6/Sigmoid_2Sigmoid rnn_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
rnn_6/lstm_cell_6/Tanh_1Tanhrnn_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/lstm_cell_6/mul_2Mulrnn_6/lstm_cell_6/Sigmoid_2:y:0rnn_6/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.t
#rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   d
"rnn_6/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
rnn_6/TensorArrayV2_1TensorListReserve,rnn_6/TensorArrayV2_1/element_shape:output:0+rnn_6/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Õ
rnn_6/whileWhile!rnn_6/while/loop_counter:output:0'rnn_6/while/maximum_iterations:output:0rnn_6/time:output:0rnn_6/TensorArrayV2_1:handle:0rnn_6/zeros:output:0rnn_6/zeros_1:output:0rnn_6/strided_slice_1:output:0=rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:00rnn_6_lstm_cell_6_matmul_readvariableop_resource2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource1rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
rnn_6_while_body_2652141*$
condR
rnn_6_while_cond_2652140*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
6rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   è
(rnn_6/TensorArrayV2Stack/TensorListStackTensorListStackrnn_6/while:output:3?rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsn
rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¥
rnn_6/strided_slice_3StridedSlice1rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_6/strided_slice_3/stack:output:0&rnn_6/strided_slice_3/stack_1:output:0&rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maskk
rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
rnn_6/transpose_1	Transpose1rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_186/MatMul/ReadVariableOpReadVariableOp(dense_186_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0
dense_186/MatMulMatMulrnn_6/strided_slice_3:output:0'dense_186/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 dense_186/BiasAdd/ReadVariableOpReadVariableOp)dense_186_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_186/BiasAddBiasAdddense_186/MatMul:product:0(dense_186/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.d
dense_186/ReluReludense_186/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_187/MatMul/ReadVariableOpReadVariableOp(dense_187_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_187/MatMulMatMuldense_186/Relu:activations:0'dense_187/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_187/BiasAdd/ReadVariableOpReadVariableOp)dense_187_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_187/BiasAddBiasAdddense_187/MatMul:product:0(dense_187/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_187/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
NoOpNoOp!^dense_186/BiasAdd/ReadVariableOp ^dense_186/MatMul/ReadVariableOp!^dense_187/BiasAdd/ReadVariableOp ^dense_187/MatMul/ReadVariableOp)^rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp(^rnn_6/lstm_cell_6/MatMul/ReadVariableOp*^rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp^rnn_6/while?^token_and_position_embedding_59/embedding_118/embedding_lookup?^token_and_position_embedding_59/embedding_119/embedding_lookupH^transformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOpL^transformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOpH^transformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOpL^transformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOpS^transformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp]^transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpF^transformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOpP^transformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOpH^transformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOpR^transformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOpH^transformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOpR^transformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOpF^transformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOpH^transformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOpF^transformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOpH^transformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_186/BiasAdd/ReadVariableOp dense_186/BiasAdd/ReadVariableOp2B
dense_186/MatMul/ReadVariableOpdense_186/MatMul/ReadVariableOp2D
 dense_187/BiasAdd/ReadVariableOp dense_187/BiasAdd/ReadVariableOp2B
dense_187/MatMul/ReadVariableOpdense_187/MatMul/ReadVariableOp2T
(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp2R
'rnn_6/lstm_cell_6/MatMul/ReadVariableOp'rnn_6/lstm_cell_6/MatMul/ReadVariableOp2V
)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp2
rnn_6/whilernn_6/while2
>token_and_position_embedding_59/embedding_118/embedding_lookup>token_and_position_embedding_59/embedding_118/embedding_lookup2
>token_and_position_embedding_59/embedding_119/embedding_lookup>token_and_position_embedding_59/embedding_119/embedding_lookup2
Gtransformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOpGtransformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOp2
Ktransformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOpKtransformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOp2
Gtransformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOpGtransformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOp2
Ktransformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOpKtransformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOp2¨
Rtransformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOpRtransformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp2¼
\transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp\transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOpEtransformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOp2¢
Otransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOpOtransformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOp2
Gtransformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOpGtransformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOp2¦
Qtransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOpQtransformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOp2
Gtransformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOpGtransformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOp2¦
Qtransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOpQtransformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOpEtransformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOp2
Gtransformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOpGtransformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOp2
Etransformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOpEtransformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOp2
Gtransformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOpGtransformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
¨£
ç"
"__inference__wrapped_model_2650031
input_60a
Omodel_55_token_and_position_embedding_59_embedding_119_embedding_lookup_2649742:.2b
Omodel_55_token_and_position_embedding_59_embedding_118_embedding_lookup_2649748:	2y
cmodel_55_transformer_encoder_58_multi_head_attention_58_query_einsum_einsum_readvariableop_resource:22k
Ymodel_55_transformer_encoder_58_multi_head_attention_58_query_add_readvariableop_resource:2w
amodel_55_transformer_encoder_58_multi_head_attention_58_key_einsum_einsum_readvariableop_resource:22i
Wmodel_55_transformer_encoder_58_multi_head_attention_58_key_add_readvariableop_resource:2y
cmodel_55_transformer_encoder_58_multi_head_attention_58_value_einsum_einsum_readvariableop_resource:22k
Ymodel_55_transformer_encoder_58_multi_head_attention_58_value_add_readvariableop_resource:2
nmodel_55_transformer_encoder_58_multi_head_attention_58_attention_output_einsum_einsum_readvariableop_resource:22r
dmodel_55_transformer_encoder_58_multi_head_attention_58_attention_output_add_readvariableop_resource:2k
]model_55_transformer_encoder_58_layer_normalization_116_batchnorm_mul_readvariableop_resource:2g
Ymodel_55_transformer_encoder_58_layer_normalization_116_batchnorm_readvariableop_resource:2k
Ymodel_55_transformer_encoder_58_sequential_58_dense_182_tensordot_readvariableop_resource:2 e
Wmodel_55_transformer_encoder_58_sequential_58_dense_182_biasadd_readvariableop_resource: k
Ymodel_55_transformer_encoder_58_sequential_58_dense_183_tensordot_readvariableop_resource: 2e
Wmodel_55_transformer_encoder_58_sequential_58_dense_183_biasadd_readvariableop_resource:2k
]model_55_transformer_encoder_58_layer_normalization_117_batchnorm_mul_readvariableop_resource:2g
Ymodel_55_transformer_encoder_58_layer_normalization_117_batchnorm_readvariableop_resource:2L
9model_55_rnn_6_lstm_cell_6_matmul_readvariableop_resource:	2¸N
;model_55_rnn_6_lstm_cell_6_matmul_1_readvariableop_resource:	.¸I
:model_55_rnn_6_lstm_cell_6_biasadd_readvariableop_resource:	¸C
1model_55_dense_186_matmul_readvariableop_resource:..@
2model_55_dense_186_biasadd_readvariableop_resource:.C
1model_55_dense_187_matmul_readvariableop_resource:.@
2model_55_dense_187_biasadd_readvariableop_resource:
identity¢)model_55/dense_186/BiasAdd/ReadVariableOp¢(model_55/dense_186/MatMul/ReadVariableOp¢)model_55/dense_187/BiasAdd/ReadVariableOp¢(model_55/dense_187/MatMul/ReadVariableOp¢1model_55/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp¢0model_55/rnn_6/lstm_cell_6/MatMul/ReadVariableOp¢2model_55/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp¢model_55/rnn_6/while¢Gmodel_55/token_and_position_embedding_59/embedding_118/embedding_lookup¢Gmodel_55/token_and_position_embedding_59/embedding_119/embedding_lookup¢Pmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOp¢Tmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOp¢Pmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOp¢Tmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOp¢[model_55/transformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp¢emodel_55/transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp¢Nmodel_55/transformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOp¢Xmodel_55/transformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOp¢Pmodel_55/transformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOp¢Zmodel_55/transformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOp¢Pmodel_55/transformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOp¢Zmodel_55/transformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOp¢Nmodel_55/transformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOp¢Pmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOp¢Nmodel_55/transformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOp¢Pmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOpf
.model_55/token_and_position_embedding_59/ShapeShapeinput_60*
T0*
_output_shapes
:
<model_55/token_and_position_embedding_59/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
>model_55/token_and_position_embedding_59/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
>model_55/token_and_position_embedding_59/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6model_55/token_and_position_embedding_59/strided_sliceStridedSlice7model_55/token_and_position_embedding_59/Shape:output:0Emodel_55/token_and_position_embedding_59/strided_slice/stack:output:0Gmodel_55/token_and_position_embedding_59/strided_slice/stack_1:output:0Gmodel_55/token_and_position_embedding_59/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4model_55/token_and_position_embedding_59/range/startConst*
_output_shapes
: *
dtype0*
value	B : v
4model_55/token_and_position_embedding_59/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
.model_55/token_and_position_embedding_59/rangeRange=model_55/token_and_position_embedding_59/range/start:output:0?model_55/token_and_position_embedding_59/strided_slice:output:0=model_55/token_and_position_embedding_59/range/delta:output:0*
_output_shapes
:.
Gmodel_55/token_and_position_embedding_59/embedding_119/embedding_lookupResourceGatherOmodel_55_token_and_position_embedding_59_embedding_119_embedding_lookup_26497427model_55/token_and_position_embedding_59/range:output:0*
Tindices0*b
_classX
VTloc:@model_55/token_and_position_embedding_59/embedding_119/embedding_lookup/2649742*
_output_shapes

:.2*
dtype0»
Pmodel_55/token_and_position_embedding_59/embedding_119/embedding_lookup/IdentityIdentityPmodel_55/token_and_position_embedding_59/embedding_119/embedding_lookup:output:0*
T0*b
_classX
VTloc:@model_55/token_and_position_embedding_59/embedding_119/embedding_lookup/2649742*
_output_shapes

:.2â
Rmodel_55/token_and_position_embedding_59/embedding_119/embedding_lookup/Identity_1IdentityYmodel_55/token_and_position_embedding_59/embedding_119/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2
;model_55/token_and_position_embedding_59/embedding_118/CastCastinput_60*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Gmodel_55/token_and_position_embedding_59/embedding_118/embedding_lookupResourceGatherOmodel_55_token_and_position_embedding_59_embedding_118_embedding_lookup_2649748?model_55/token_and_position_embedding_59/embedding_118/Cast:y:0*
Tindices0*b
_classX
VTloc:@model_55/token_and_position_embedding_59/embedding_118/embedding_lookup/2649748*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0È
Pmodel_55/token_and_position_embedding_59/embedding_118/embedding_lookup/IdentityIdentityPmodel_55/token_and_position_embedding_59/embedding_118/embedding_lookup:output:0*
T0*b
_classX
VTloc:@model_55/token_and_position_embedding_59/embedding_118/embedding_lookup/2649748*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ï
Rmodel_55/token_and_position_embedding_59/embedding_118/embedding_lookup/Identity_1IdentityYmodel_55/token_and_position_embedding_59/embedding_118/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¥
,model_55/token_and_position_embedding_59/addAddV2[model_55/token_and_position_embedding_59/embedding_118/embedding_lookup/Identity_1:output:0[model_55/token_and_position_embedding_59/embedding_119/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Zmodel_55/transformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOpReadVariableOpcmodel_55_transformer_encoder_58_multi_head_attention_58_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ë
Kmodel_55/transformer_encoder_58/multi_head_attention_58/query/einsum/EinsumEinsum0model_55/token_and_position_embedding_59/add:z:0bmodel_55/transformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeê
Pmodel_55/transformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOpReadVariableOpYmodel_55_transformer_encoder_58_multi_head_attention_58_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0´
Amodel_55/transformer_encoder_58/multi_head_attention_58/query/addAddV2Tmodel_55/transformer_encoder_58/multi_head_attention_58/query/einsum/Einsum:output:0Xmodel_55/transformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2þ
Xmodel_55/transformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOpReadVariableOpamodel_55_transformer_encoder_58_multi_head_attention_58_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ç
Imodel_55/transformer_encoder_58/multi_head_attention_58/key/einsum/EinsumEinsum0model_55/token_and_position_embedding_59/add:z:0`model_55/transformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeæ
Nmodel_55/transformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOpReadVariableOpWmodel_55_transformer_encoder_58_multi_head_attention_58_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0®
?model_55/transformer_encoder_58/multi_head_attention_58/key/addAddV2Rmodel_55/transformer_encoder_58/multi_head_attention_58/key/einsum/Einsum:output:0Vmodel_55/transformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Zmodel_55/transformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOpReadVariableOpcmodel_55_transformer_encoder_58_multi_head_attention_58_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ë
Kmodel_55/transformer_encoder_58/multi_head_attention_58/value/einsum/EinsumEinsum0model_55/token_and_position_embedding_59/add:z:0bmodel_55/transformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeê
Pmodel_55/transformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOpReadVariableOpYmodel_55_transformer_encoder_58_multi_head_attention_58_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0´
Amodel_55/transformer_encoder_58/multi_head_attention_58/value/addAddV2Tmodel_55/transformer_encoder_58/multi_head_attention_58/value/einsum/Einsum:output:0Xmodel_55/transformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
=model_55/transformer_encoder_58/multi_head_attention_58/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>
;model_55/transformer_encoder_58/multi_head_attention_58/MulMulEmodel_55/transformer_encoder_58/multi_head_attention_58/query/add:z:0Fmodel_55/transformer_encoder_58/multi_head_attention_58/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2·
Emodel_55/transformer_encoder_58/multi_head_attention_58/einsum/EinsumEinsumCmodel_55/transformer_encoder_58/multi_head_attention_58/key/add:z:0?model_55/transformer_encoder_58/multi_head_attention_58/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbeÜ
Gmodel_55/transformer_encoder_58/multi_head_attention_58/softmax/SoftmaxSoftmaxNmodel_55/transformer_encoder_58/multi_head_attention_58/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..á
Hmodel_55/transformer_encoder_58/multi_head_attention_58/dropout/IdentityIdentityQmodel_55/transformer_encoder_58/multi_head_attention_58/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..Í
Gmodel_55/transformer_encoder_58/multi_head_attention_58/einsum_1/EinsumEinsumQmodel_55/transformer_encoder_58/multi_head_attention_58/dropout/Identity:output:0Emodel_55/transformer_encoder_58/multi_head_attention_58/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcd
emodel_55/transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpnmodel_55_transformer_encoder_58_multi_head_attention_58_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ý
Vmodel_55/transformer_encoder_58/multi_head_attention_58/attention_output/einsum/EinsumEinsumPmodel_55/transformer_encoder_58/multi_head_attention_58/einsum_1/Einsum:output:0mmodel_55/transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeü
[model_55/transformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOpReadVariableOpdmodel_55_transformer_encoder_58_multi_head_attention_58_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0Ñ
Lmodel_55/transformer_encoder_58/multi_head_attention_58/attention_output/addAddV2_model_55/transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum:output:0cmodel_55/transformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2È
4model_55/transformer_encoder_58/dropout_116/IdentityIdentityPmodel_55/transformer_encoder_58/multi_head_attention_58/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ó
#model_55/transformer_encoder_58/addAddV20model_55/token_and_position_embedding_59/add:z:0=model_55/transformer_encoder_58/dropout_116/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2 
Vmodel_55/transformer_encoder_58/layer_normalization_116/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Dmodel_55/transformer_encoder_58/layer_normalization_116/moments/meanMean'model_55/transformer_encoder_58/add:z:0_model_55/transformer_encoder_58/layer_normalization_116/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(á
Lmodel_55/transformer_encoder_58/layer_normalization_116/moments/StopGradientStopGradientMmodel_55/transformer_encoder_58/layer_normalization_116/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Qmodel_55/transformer_encoder_58/layer_normalization_116/moments/SquaredDifferenceSquaredDifference'model_55/transformer_encoder_58/add:z:0Umodel_55/transformer_encoder_58/layer_normalization_116/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¤
Zmodel_55/transformer_encoder_58/layer_normalization_116/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ó
Hmodel_55/transformer_encoder_58/layer_normalization_116/moments/varianceMeanUmodel_55/transformer_encoder_58/layer_normalization_116/moments/SquaredDifference:z:0cmodel_55/transformer_encoder_58/layer_normalization_116/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
Gmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75©
Emodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/addAddV2Qmodel_55/transformer_encoder_58/layer_normalization_116/moments/variance:output:0Pmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ñ
Gmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/RsqrtRsqrtImodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.î
Tmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOpReadVariableOp]model_55_transformer_encoder_58_layer_normalization_116_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0­
Emodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mulMulKmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/Rsqrt:y:0\model_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ø
Gmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul_1Mul'model_55/transformer_encoder_58/add:z:0Imodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Gmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul_2MulMmodel_55/transformer_encoder_58/layer_normalization_116/moments/mean:output:0Imodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2æ
Pmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOpReadVariableOpYmodel_55_transformer_encoder_58_layer_normalization_116_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0©
Emodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/subSubXmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOp:value:0Kmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Gmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/add_1AddV2Kmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul_1:z:0Imodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ê
Pmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOpReadVariableOpYmodel_55_transformer_encoder_58_sequential_58_dense_182_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
Fmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Fmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Â
Gmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/ShapeShapeKmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Omodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Jmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2GatherV2Pmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Shape:output:0Omodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/free:output:0Xmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Qmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Lmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1GatherV2Pmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Shape:output:0Omodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/axes:output:0Zmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Gmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Fmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/ProdProdSmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2:output:0Pmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Imodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Hmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Prod_1ProdUmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2_1:output:0Rmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Mmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Hmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/concatConcatV2Omodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/free:output:0Omodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/axes:output:0Vmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¡
Gmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/stackPackOmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Prod:output:0Qmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:®
Kmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/transpose	TransposeKmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/add_1:z:0Qmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2²
Imodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/ReshapeReshapeOmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/transpose:y:0Pmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ²
Hmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/MatMulMatMulRmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Reshape:output:0Xmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Imodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Omodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Jmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1ConcatV2Smodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/GatherV2:output:0Rmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/Const_2:output:0Xmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:«
Amodel_55/transformer_encoder_58/sequential_58/dense_182/TensordotReshapeRmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/MatMul:product:0Smodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. â
Nmodel_55/transformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOpReadVariableOpWmodel_55_transformer_encoder_58_sequential_58_dense_182_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¤
?model_55/transformer_encoder_58/sequential_58/dense_182/BiasAddBiasAddJmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot:output:0Vmodel_55/transformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ä
<model_55/transformer_encoder_58/sequential_58/dense_182/ReluReluHmodel_55/transformer_encoder_58/sequential_58/dense_182/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ê
Pmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOpReadVariableOpYmodel_55_transformer_encoder_58_sequential_58_dense_183_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
Fmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Fmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Á
Gmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/ShapeShapeJmodel_55/transformer_encoder_58/sequential_58/dense_182/Relu:activations:0*
T0*
_output_shapes
:
Omodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Jmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2GatherV2Pmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Shape:output:0Omodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/free:output:0Xmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Qmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Lmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1GatherV2Pmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Shape:output:0Omodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/axes:output:0Zmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Gmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Fmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/ProdProdSmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2:output:0Pmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Imodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Hmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Prod_1ProdUmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2_1:output:0Rmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Mmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
Hmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/concatConcatV2Omodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/free:output:0Omodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/axes:output:0Vmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¡
Gmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/stackPackOmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Prod:output:0Qmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:­
Kmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/transpose	TransposeJmodel_55/transformer_encoder_58/sequential_58/dense_182/Relu:activations:0Qmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ²
Imodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/ReshapeReshapeOmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/transpose:y:0Pmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ²
Hmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/MatMulMatMulRmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Reshape:output:0Xmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Imodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Omodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Jmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1ConcatV2Smodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/GatherV2:output:0Rmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/Const_2:output:0Xmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:«
Amodel_55/transformer_encoder_58/sequential_58/dense_183/TensordotReshapeRmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/MatMul:product:0Smodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2â
Nmodel_55/transformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOpReadVariableOpWmodel_55_transformer_encoder_58_sequential_58_dense_183_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¤
?model_55/transformer_encoder_58/sequential_58/dense_183/BiasAddBiasAddJmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot:output:0Vmodel_55/transformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2À
4model_55/transformer_encoder_58/dropout_117/IdentityIdentityHmodel_55/transformer_encoder_58/sequential_58/dense_183/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ð
%model_55/transformer_encoder_58/add_1AddV2Kmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/add_1:z:0=model_55/transformer_encoder_58/dropout_117/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2 
Vmodel_55/transformer_encoder_58/layer_normalization_117/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Dmodel_55/transformer_encoder_58/layer_normalization_117/moments/meanMean)model_55/transformer_encoder_58/add_1:z:0_model_55/transformer_encoder_58/layer_normalization_117/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(á
Lmodel_55/transformer_encoder_58/layer_normalization_117/moments/StopGradientStopGradientMmodel_55/transformer_encoder_58/layer_normalization_117/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Qmodel_55/transformer_encoder_58/layer_normalization_117/moments/SquaredDifferenceSquaredDifference)model_55/transformer_encoder_58/add_1:z:0Umodel_55/transformer_encoder_58/layer_normalization_117/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¤
Zmodel_55/transformer_encoder_58/layer_normalization_117/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ó
Hmodel_55/transformer_encoder_58/layer_normalization_117/moments/varianceMeanUmodel_55/transformer_encoder_58/layer_normalization_117/moments/SquaredDifference:z:0cmodel_55/transformer_encoder_58/layer_normalization_117/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
Gmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75©
Emodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/addAddV2Qmodel_55/transformer_encoder_58/layer_normalization_117/moments/variance:output:0Pmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ñ
Gmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/RsqrtRsqrtImodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.î
Tmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOpReadVariableOp]model_55_transformer_encoder_58_layer_normalization_117_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0­
Emodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mulMulKmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/Rsqrt:y:0\model_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ú
Gmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul_1Mul)model_55/transformer_encoder_58/add_1:z:0Imodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Gmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul_2MulMmodel_55/transformer_encoder_58/layer_normalization_117/moments/mean:output:0Imodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2æ
Pmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOpReadVariableOpYmodel_55_transformer_encoder_58_layer_normalization_117_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0©
Emodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/subSubXmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOp:value:0Kmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Gmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/add_1AddV2Kmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul_1:z:0Imodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
model_55/rnn_6/ShapeShapeKmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/add_1:z:0*
T0*
_output_shapes
:l
"model_55/rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$model_55/rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$model_55/rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model_55/rnn_6/strided_sliceStridedSlicemodel_55/rnn_6/Shape:output:0+model_55/rnn_6/strided_slice/stack:output:0-model_55/rnn_6/strided_slice/stack_1:output:0-model_55/rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
model_55/rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :. 
model_55/rnn_6/zeros/packedPack%model_55/rnn_6/strided_slice:output:0&model_55/rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
model_55/rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model_55/rnn_6/zerosFill$model_55/rnn_6/zeros/packed:output:0#model_55/rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.a
model_55/rnn_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.¤
model_55/rnn_6/zeros_1/packedPack%model_55/rnn_6/strided_slice:output:0(model_55/rnn_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
model_55/rnn_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model_55/rnn_6/zeros_1Fill&model_55/rnn_6/zeros_1/packed:output:0%model_55/rnn_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
model_55/rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ð
model_55/rnn_6/transpose	TransposeKmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/add_1:z:0&model_55/rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:.ÿÿÿÿÿÿÿÿÿ2b
model_55/rnn_6/Shape_1Shapemodel_55/rnn_6/transpose:y:0*
T0*
_output_shapes
:n
$model_55/rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&model_55/rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&model_55/rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
model_55/rnn_6/strided_slice_1StridedSlicemodel_55/rnn_6/Shape_1:output:0-model_55/rnn_6/strided_slice_1/stack:output:0/model_55/rnn_6/strided_slice_1/stack_1:output:0/model_55/rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*model_55/rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿá
model_55/rnn_6/TensorArrayV2TensorListReserve3model_55/rnn_6/TensorArrayV2/element_shape:output:0'model_55/rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Dmodel_55/rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
6model_55/rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_55/rnn_6/transpose:y:0Mmodel_55/rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒn
$model_55/rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&model_55/rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&model_55/rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
model_55/rnn_6/strided_slice_2StridedSlicemodel_55/rnn_6/transpose:y:0-model_55/rnn_6/strided_slice_2/stack:output:0/model_55/rnn_6/strided_slice_2/stack_1:output:0/model_55/rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask«
0model_55/rnn_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp9model_55_rnn_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0Á
!model_55/rnn_6/lstm_cell_6/MatMulMatMul'model_55/rnn_6/strided_slice_2:output:08model_55/rnn_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¯
2model_55/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp;model_55_rnn_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0»
#model_55/rnn_6/lstm_cell_6/MatMul_1MatMulmodel_55/rnn_6/zeros:output:0:model_55/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¶
model_55/rnn_6/lstm_cell_6/addAddV2+model_55/rnn_6/lstm_cell_6/MatMul:product:0-model_55/rnn_6/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸©
1model_55/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp:model_55_rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¿
"model_55/rnn_6/lstm_cell_6/BiasAddBiasAdd"model_55/rnn_6/lstm_cell_6/add:z:09model_55/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸l
*model_55/rnn_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 model_55/rnn_6/lstm_cell_6/splitSplit3model_55/rnn_6/lstm_cell_6/split/split_dim:output:0+model_55/rnn_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
"model_55/rnn_6/lstm_cell_6/SigmoidSigmoid)model_55/rnn_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
$model_55/rnn_6/lstm_cell_6/Sigmoid_1Sigmoid)model_55/rnn_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¢
model_55/rnn_6/lstm_cell_6/mulMul(model_55/rnn_6/lstm_cell_6/Sigmoid_1:y:0model_55/rnn_6/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_55/rnn_6/lstm_cell_6/TanhTanh)model_55/rnn_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¦
 model_55/rnn_6/lstm_cell_6/mul_1Mul&model_55/rnn_6/lstm_cell_6/Sigmoid:y:0#model_55/rnn_6/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¥
 model_55/rnn_6/lstm_cell_6/add_1AddV2"model_55/rnn_6/lstm_cell_6/mul:z:0$model_55/rnn_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
$model_55/rnn_6/lstm_cell_6/Sigmoid_2Sigmoid)model_55/rnn_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!model_55/rnn_6/lstm_cell_6/Tanh_1Tanh$model_55/rnn_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
 model_55/rnn_6/lstm_cell_6/mul_2Mul(model_55/rnn_6/lstm_cell_6/Sigmoid_2:y:0%model_55/rnn_6/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
,model_55/rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   m
+model_55/rnn_6/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ò
model_55/rnn_6/TensorArrayV2_1TensorListReserve5model_55/rnn_6/TensorArrayV2_1/element_shape:output:04model_55/rnn_6/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒU
model_55/rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'model_55/rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿc
!model_55/rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ó
model_55/rnn_6/whileWhile*model_55/rnn_6/while/loop_counter:output:00model_55/rnn_6/while/maximum_iterations:output:0model_55/rnn_6/time:output:0'model_55/rnn_6/TensorArrayV2_1:handle:0model_55/rnn_6/zeros:output:0model_55/rnn_6/zeros_1:output:0'model_55/rnn_6/strided_slice_1:output:0Fmodel_55/rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:09model_55_rnn_6_lstm_cell_6_matmul_readvariableop_resource;model_55_rnn_6_lstm_cell_6_matmul_1_readvariableop_resource:model_55_rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!model_55_rnn_6_while_body_2649934*-
cond%R#
!model_55_rnn_6_while_cond_2649933*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
?model_55/rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   
1model_55/rnn_6/TensorArrayV2Stack/TensorListStackTensorListStackmodel_55/rnn_6/while:output:3Hmodel_55/rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsw
$model_55/rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿp
&model_55/rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&model_55/rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ò
model_55/rnn_6/strided_slice_3StridedSlice:model_55/rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0-model_55/rnn_6/strided_slice_3/stack:output:0/model_55/rnn_6/strided_slice_3/stack_1:output:0/model_55/rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maskt
model_55/rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ã
model_55/rnn_6/transpose_1	Transpose:model_55/rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0(model_55/rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
(model_55/dense_186/MatMul/ReadVariableOpReadVariableOp1model_55_dense_186_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0°
model_55/dense_186/MatMulMatMul'model_55/rnn_6/strided_slice_3:output:00model_55/dense_186/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
)model_55/dense_186/BiasAdd/ReadVariableOpReadVariableOp2model_55_dense_186_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0¯
model_55/dense_186/BiasAddBiasAdd#model_55/dense_186/MatMul:product:01model_55/dense_186/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.v
model_55/dense_186/ReluRelu#model_55/dense_186/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
(model_55/dense_187/MatMul/ReadVariableOpReadVariableOp1model_55_dense_187_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0®
model_55/dense_187/MatMulMatMul%model_55/dense_186/Relu:activations:00model_55/dense_187/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_55/dense_187/BiasAdd/ReadVariableOpReadVariableOp2model_55_dense_187_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
model_55/dense_187/BiasAddBiasAdd#model_55/dense_187/MatMul:product:01model_55/dense_187/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
IdentityIdentity#model_55/dense_187/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
NoOpNoOp*^model_55/dense_186/BiasAdd/ReadVariableOp)^model_55/dense_186/MatMul/ReadVariableOp*^model_55/dense_187/BiasAdd/ReadVariableOp)^model_55/dense_187/MatMul/ReadVariableOp2^model_55/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp1^model_55/rnn_6/lstm_cell_6/MatMul/ReadVariableOp3^model_55/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp^model_55/rnn_6/whileH^model_55/token_and_position_embedding_59/embedding_118/embedding_lookupH^model_55/token_and_position_embedding_59/embedding_119/embedding_lookupQ^model_55/transformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOpU^model_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOpQ^model_55/transformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOpU^model_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOp\^model_55/transformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOpf^model_55/transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpO^model_55/transformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOpY^model_55/transformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOpQ^model_55/transformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOp[^model_55/transformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOpQ^model_55/transformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOp[^model_55/transformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOpO^model_55/transformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOpQ^model_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOpO^model_55/transformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOpQ^model_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2V
)model_55/dense_186/BiasAdd/ReadVariableOp)model_55/dense_186/BiasAdd/ReadVariableOp2T
(model_55/dense_186/MatMul/ReadVariableOp(model_55/dense_186/MatMul/ReadVariableOp2V
)model_55/dense_187/BiasAdd/ReadVariableOp)model_55/dense_187/BiasAdd/ReadVariableOp2T
(model_55/dense_187/MatMul/ReadVariableOp(model_55/dense_187/MatMul/ReadVariableOp2f
1model_55/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp1model_55/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp2d
0model_55/rnn_6/lstm_cell_6/MatMul/ReadVariableOp0model_55/rnn_6/lstm_cell_6/MatMul/ReadVariableOp2h
2model_55/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp2model_55/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp2,
model_55/rnn_6/whilemodel_55/rnn_6/while2
Gmodel_55/token_and_position_embedding_59/embedding_118/embedding_lookupGmodel_55/token_and_position_embedding_59/embedding_118/embedding_lookup2
Gmodel_55/token_and_position_embedding_59/embedding_119/embedding_lookupGmodel_55/token_and_position_embedding_59/embedding_119/embedding_lookup2¤
Pmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOpPmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/ReadVariableOp2¬
Tmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOpTmodel_55/transformer_encoder_58/layer_normalization_116/batchnorm/mul/ReadVariableOp2¤
Pmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOpPmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/ReadVariableOp2¬
Tmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOpTmodel_55/transformer_encoder_58/layer_normalization_117/batchnorm/mul/ReadVariableOp2º
[model_55/transformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp[model_55/transformer_encoder_58/multi_head_attention_58/attention_output/add/ReadVariableOp2Î
emodel_55/transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpemodel_55/transformer_encoder_58/multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp2 
Nmodel_55/transformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOpNmodel_55/transformer_encoder_58/multi_head_attention_58/key/add/ReadVariableOp2´
Xmodel_55/transformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOpXmodel_55/transformer_encoder_58/multi_head_attention_58/key/einsum/Einsum/ReadVariableOp2¤
Pmodel_55/transformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOpPmodel_55/transformer_encoder_58/multi_head_attention_58/query/add/ReadVariableOp2¸
Zmodel_55/transformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOpZmodel_55/transformer_encoder_58/multi_head_attention_58/query/einsum/Einsum/ReadVariableOp2¤
Pmodel_55/transformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOpPmodel_55/transformer_encoder_58/multi_head_attention_58/value/add/ReadVariableOp2¸
Zmodel_55/transformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOpZmodel_55/transformer_encoder_58/multi_head_attention_58/value/einsum/Einsum/ReadVariableOp2 
Nmodel_55/transformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOpNmodel_55/transformer_encoder_58/sequential_58/dense_182/BiasAdd/ReadVariableOp2¤
Pmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOpPmodel_55/transformer_encoder_58/sequential_58/dense_182/Tensordot/ReadVariableOp2 
Nmodel_55/transformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOpNmodel_55/transformer_encoder_58/sequential_58/dense_183/BiasAdd/ReadVariableOp2¤
Pmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOpPmodel_55/transformer_encoder_58/sequential_58/dense_183/Tensordot/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
input_60
Ö

+__inference_dense_183_layer_call_fn_2653871

inputs
unknown: 2
	unknown_0:2
identity¢StatefulPartitionedCallß
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
GPU 2J 8 *O
fJRH
F__inference_dense_183_layer_call_and_return_conditional_losses_2650105s
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
Ê
²
*__inference_model_55_layer_call_fn_2651012
input_60
unknown:.2
	unknown_0:	2
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
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_60unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *N
fIRG
E__inference_model_55_layer_call_and_return_conditional_losses_2650959o
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
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
input_60
8

B__inference_rnn_6_layer_call_and_return_conditional_losses_2650567

inputs&
lstm_cell_6_2650484:	2¸&
lstm_cell_6_2650486:	.¸"
lstm_cell_6_2650488:	¸
identity¢#lstm_cell_6/StatefulPartitionedCall¢while;
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
shrink_axis_maskô
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_2650484lstm_cell_6_2650486lstm_cell_6_2650488*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2650438n
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
value	B : ¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_2650484lstm_cell_6_2650486lstm_cell_6_2650488*
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
bodyR
while_body_2650498*
condR
while_cond_2650497*K
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
:ÿÿÿÿÿÿÿÿÿ.t
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ñ8
È
while_body_2651105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_6_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_6/BiasAdd/ReadVariableOp¢'while/lstm_cell_6/MatMul/ReadVariableOp¢)while/lstm_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
ë
ö
-__inference_lstm_cell_6_layer_call_fn_2653758

inputs
states_0
states_1
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity

identity_1

identity_2¢StatefulPartitionedCall¨
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2650438o
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
üI

B__inference_rnn_6_layer_call_and_return_conditional_losses_2651189

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	2¸?
,lstm_cell_6_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_6_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_6/BiasAdd/ReadVariableOp¢!lstm_cell_6/MatMul/ReadVariableOp¢#lstm_cell_6/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_2651105*
condR
while_cond_2651104*K
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
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ú
¸
8__inference_transformer_encoder_58_layer_call_fn_2652621

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
identity¢StatefulPartitionedCall§
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
GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2650740s
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
ì(
²
E__inference_model_55_layer_call_and_return_conditional_losses_2651706
input_609
'token_and_position_embedding_59_2651650:.2:
'token_and_position_embedding_59_2651652:	24
transformer_encoder_58_2651655:220
transformer_encoder_58_2651657:24
transformer_encoder_58_2651659:220
transformer_encoder_58_2651661:24
transformer_encoder_58_2651663:220
transformer_encoder_58_2651665:24
transformer_encoder_58_2651667:22,
transformer_encoder_58_2651669:2,
transformer_encoder_58_2651671:2,
transformer_encoder_58_2651673:20
transformer_encoder_58_2651675:2 ,
transformer_encoder_58_2651677: 0
transformer_encoder_58_2651679: 2,
transformer_encoder_58_2651681:2,
transformer_encoder_58_2651683:2,
transformer_encoder_58_2651685:2 
rnn_6_2651688:	2¸ 
rnn_6_2651690:	.¸
rnn_6_2651692:	¸#
dense_186_2651695:..
dense_186_2651697:.#
dense_187_2651700:.
dense_187_2651702:
identity¢!dense_186/StatefulPartitionedCall¢!dense_187/StatefulPartitionedCall¢rnn_6/StatefulPartitionedCall¢7token_and_position_embedding_59/StatefulPartitionedCall¢.transformer_encoder_58/StatefulPartitionedCallÕ
7token_and_position_embedding_59/StatefulPartitionedCallStatefulPartitionedCallinput_60'token_and_position_embedding_59_2651650'token_and_position_embedding_59_2651652*
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
GPU 2J 8 *e
f`R^
\__inference_token_and_position_embedding_59_layer_call_and_return_conditional_losses_2650607Å
.transformer_encoder_58/StatefulPartitionedCallStatefulPartitionedCall@token_and_position_embedding_59/StatefulPartitionedCall:output:0transformer_encoder_58_2651655transformer_encoder_58_2651657transformer_encoder_58_2651659transformer_encoder_58_2651661transformer_encoder_58_2651663transformer_encoder_58_2651665transformer_encoder_58_2651667transformer_encoder_58_2651669transformer_encoder_58_2651671transformer_encoder_58_2651673transformer_encoder_58_2651675transformer_encoder_58_2651677transformer_encoder_58_2651679transformer_encoder_58_2651681transformer_encoder_58_2651683transformer_encoder_58_2651685*
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
GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2650740©
rnn_6/StatefulPartitionedCallStatefulPartitionedCall7transformer_encoder_58/StatefulPartitionedCall:output:0rnn_6_2651688rnn_6_2651690rnn_6_2651692*
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
GPU 2J 8 *K
fFRD
B__inference_rnn_6_layer_call_and_return_conditional_losses_2650917
!dense_186/StatefulPartitionedCallStatefulPartitionedCall&rnn_6/StatefulPartitionedCall:output:0dense_186_2651695dense_186_2651697*
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
GPU 2J 8 *O
fJRH
F__inference_dense_186_layer_call_and_return_conditional_losses_2650936
!dense_187/StatefulPartitionedCallStatefulPartitionedCall*dense_186/StatefulPartitionedCall:output:0dense_187_2651700dense_187_2651702*
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
GPU 2J 8 *O
fJRH
F__inference_dense_187_layer_call_and_return_conditional_losses_2650952y
IdentityIdentity*dense_187/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp"^dense_186/StatefulPartitionedCall"^dense_187/StatefulPartitionedCall^rnn_6/StatefulPartitionedCall8^token_and_position_embedding_59/StatefulPartitionedCall/^transformer_encoder_58/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2F
!dense_186/StatefulPartitionedCall!dense_186/StatefulPartitionedCall2F
!dense_187/StatefulPartitionedCall!dense_187/StatefulPartitionedCall2>
rnn_6/StatefulPartitionedCallrnn_6/StatefulPartitionedCall2r
7token_and_position_embedding_59/StatefulPartitionedCall7token_and_position_embedding_59/StatefulPartitionedCall2`
.transformer_encoder_58/StatefulPartitionedCall.transformer_encoder_58/StatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
input_60
J

B__inference_rnn_6_layer_call_and_return_conditional_losses_2653113
inputs_0=
*lstm_cell_6_matmul_readvariableop_resource:	2¸?
,lstm_cell_6_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_6_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_6/BiasAdd/ReadVariableOp¢!lstm_cell_6/MatMul/ReadVariableOp¢#lstm_cell_6/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_2653029*
condR
while_cond_2653028*K
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
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
º
È
while_cond_2653028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2653028___redundant_placeholder05
1while_while_cond_2653028___redundant_placeholder15
1while_while_cond_2653028___redundant_placeholder25
1while_while_cond_2653028___redundant_placeholder3
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


÷
F__inference_dense_186_layer_call_and_return_conditional_losses_2650936

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
º
È
while_cond_2650497
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2650497___redundant_placeholder05
1while_while_cond_2650497___redundant_placeholder15
1while_while_cond_2650497___redundant_placeholder25
1while_while_cond_2650497___redundant_placeholder3
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
Ä¿
â
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2650740

inputsY
Cmulti_head_attention_58_query_einsum_einsum_readvariableop_resource:22K
9multi_head_attention_58_query_add_readvariableop_resource:2W
Amulti_head_attention_58_key_einsum_einsum_readvariableop_resource:22I
7multi_head_attention_58_key_add_readvariableop_resource:2Y
Cmulti_head_attention_58_value_einsum_einsum_readvariableop_resource:22K
9multi_head_attention_58_value_add_readvariableop_resource:2d
Nmulti_head_attention_58_attention_output_einsum_einsum_readvariableop_resource:22R
Dmulti_head_attention_58_attention_output_add_readvariableop_resource:2K
=layer_normalization_116_batchnorm_mul_readvariableop_resource:2G
9layer_normalization_116_batchnorm_readvariableop_resource:2K
9sequential_58_dense_182_tensordot_readvariableop_resource:2 E
7sequential_58_dense_182_biasadd_readvariableop_resource: K
9sequential_58_dense_183_tensordot_readvariableop_resource: 2E
7sequential_58_dense_183_biasadd_readvariableop_resource:2K
=layer_normalization_117_batchnorm_mul_readvariableop_resource:2G
9layer_normalization_117_batchnorm_readvariableop_resource:2
identity¢0layer_normalization_116/batchnorm/ReadVariableOp¢4layer_normalization_116/batchnorm/mul/ReadVariableOp¢0layer_normalization_117/batchnorm/ReadVariableOp¢4layer_normalization_117/batchnorm/mul/ReadVariableOp¢;multi_head_attention_58/attention_output/add/ReadVariableOp¢Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp¢.multi_head_attention_58/key/add/ReadVariableOp¢8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp¢0multi_head_attention_58/query/add/ReadVariableOp¢:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp¢0multi_head_attention_58/value/add/ReadVariableOp¢:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp¢.sequential_58/dense_182/BiasAdd/ReadVariableOp¢0sequential_58/dense_182/Tensordot/ReadVariableOp¢.sequential_58/dense_183/BiasAdd/ReadVariableOp¢0sequential_58/dense_183/Tensordot/ReadVariableOpÂ
:multi_head_attention_58/query/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_58_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0á
+multi_head_attention_58/query/einsum/EinsumEinsuminputsBmulti_head_attention_58/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeª
0multi_head_attention_58/query/add/ReadVariableOpReadVariableOp9multi_head_attention_58_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ô
!multi_head_attention_58/query/addAddV24multi_head_attention_58/query/einsum/Einsum:output:08multi_head_attention_58/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
8multi_head_attention_58/key/einsum/Einsum/ReadVariableOpReadVariableOpAmulti_head_attention_58_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ý
)multi_head_attention_58/key/einsum/EinsumEinsuminputs@multi_head_attention_58/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¦
.multi_head_attention_58/key/add/ReadVariableOpReadVariableOp7multi_head_attention_58_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Î
multi_head_attention_58/key/addAddV22multi_head_attention_58/key/einsum/Einsum:output:06multi_head_attention_58/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Â
:multi_head_attention_58/value/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_58_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0á
+multi_head_attention_58/value/einsum/EinsumEinsuminputsBmulti_head_attention_58/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeª
0multi_head_attention_58/value/add/ReadVariableOpReadVariableOp9multi_head_attention_58_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ô
!multi_head_attention_58/value/addAddV24multi_head_attention_58/value/einsum/Einsum:output:08multi_head_attention_58/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2b
multi_head_attention_58/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>«
multi_head_attention_58/MulMul%multi_head_attention_58/query/add:z:0&multi_head_attention_58/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2×
%multi_head_attention_58/einsum/EinsumEinsum#multi_head_attention_58/key/add:z:0multi_head_attention_58/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
'multi_head_attention_58/softmax/SoftmaxSoftmax.multi_head_attention_58/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..¡
(multi_head_attention_58/dropout/IdentityIdentity1multi_head_attention_58/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..í
'multi_head_attention_58/einsum_1/EinsumEinsum1multi_head_attention_58/dropout/Identity:output:0%multi_head_attention_58/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdØ
Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpNmulti_head_attention_58_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
6multi_head_attention_58/attention_output/einsum/EinsumEinsum0multi_head_attention_58/einsum_1/Einsum:output:0Mmulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abe¼
;multi_head_attention_58/attention_output/add/ReadVariableOpReadVariableOpDmulti_head_attention_58_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0ñ
,multi_head_attention_58/attention_output/addAddV2?multi_head_attention_58/attention_output/einsum/Einsum:output:0Cmulti_head_attention_58/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_116/IdentityIdentity0multi_head_attention_58/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2i
addAddV2inputsdropout_116/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization_116/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:½
$layer_normalization_116/moments/meanMeanadd:z:0?layer_normalization_116/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(¡
,layer_normalization_116/moments/StopGradientStopGradient-layer_normalization_116/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¼
1layer_normalization_116/moments/SquaredDifferenceSquaredDifferenceadd:z:05layer_normalization_116/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:layer_normalization_116/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_116/moments/varianceMean5layer_normalization_116/moments/SquaredDifference:z:0Clayer_normalization_116/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(l
'layer_normalization_116/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_116/batchnorm/addAddV21layer_normalization_116/moments/variance:output:00layer_normalization_116/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'layer_normalization_116/batchnorm/RsqrtRsqrt)layer_normalization_116/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
4layer_normalization_116/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_116_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Í
%layer_normalization_116/batchnorm/mulMul+layer_normalization_116/batchnorm/Rsqrt:y:0<layer_normalization_116/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'layer_normalization_116/batchnorm/mul_1Muladd:z:0)layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_116/batchnorm/mul_2Mul-layer_normalization_116/moments/mean:output:0)layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¦
0layer_normalization_116/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_116_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0É
%layer_normalization_116/batchnorm/subSub8layer_normalization_116/batchnorm/ReadVariableOp:value:0+layer_normalization_116/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_116/batchnorm/add_1AddV2+layer_normalization_116/batchnorm/mul_1:z:0)layer_normalization_116/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ª
0sequential_58/dense_182/Tensordot/ReadVariableOpReadVariableOp9sequential_58_dense_182_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0p
&sequential_58/dense_182/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:w
&sequential_58/dense_182/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
'sequential_58/dense_182/Tensordot/ShapeShape+layer_normalization_116/batchnorm/add_1:z:0*
T0*
_output_shapes
:q
/sequential_58/dense_182/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_182/Tensordot/GatherV2GatherV20sequential_58/dense_182/Tensordot/Shape:output:0/sequential_58/dense_182/Tensordot/free:output:08sequential_58/dense_182/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
1sequential_58/dense_182/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,sequential_58/dense_182/Tensordot/GatherV2_1GatherV20sequential_58/dense_182/Tensordot/Shape:output:0/sequential_58/dense_182/Tensordot/axes:output:0:sequential_58/dense_182/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
'sequential_58/dense_182/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_58/dense_182/Tensordot/ProdProd3sequential_58/dense_182/Tensordot/GatherV2:output:00sequential_58/dense_182/Tensordot/Const:output:0*
T0*
_output_shapes
: s
)sequential_58/dense_182/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¼
(sequential_58/dense_182/Tensordot/Prod_1Prod5sequential_58/dense_182/Tensordot/GatherV2_1:output:02sequential_58/dense_182/Tensordot/Const_1:output:0*
T0*
_output_shapes
: o
-sequential_58/dense_182/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
(sequential_58/dense_182/Tensordot/concatConcatV2/sequential_58/dense_182/Tensordot/free:output:0/sequential_58/dense_182/Tensordot/axes:output:06sequential_58/dense_182/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
'sequential_58/dense_182/Tensordot/stackPack/sequential_58/dense_182/Tensordot/Prod:output:01sequential_58/dense_182/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Î
+sequential_58/dense_182/Tensordot/transpose	Transpose+layer_normalization_116/batchnorm/add_1:z:01sequential_58/dense_182/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ò
)sequential_58/dense_182/Tensordot/ReshapeReshape/sequential_58/dense_182/Tensordot/transpose:y:00sequential_58/dense_182/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
(sequential_58/dense_182/Tensordot/MatMulMatMul2sequential_58/dense_182/Tensordot/Reshape:output:08sequential_58/dense_182/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
)sequential_58/dense_182/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: q
/sequential_58/dense_182/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_182/Tensordot/concat_1ConcatV23sequential_58/dense_182/Tensordot/GatherV2:output:02sequential_58/dense_182/Tensordot/Const_2:output:08sequential_58/dense_182/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ë
!sequential_58/dense_182/TensordotReshape2sequential_58/dense_182/Tensordot/MatMul:product:03sequential_58/dense_182/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¢
.sequential_58/dense_182/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_182_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ä
sequential_58/dense_182/BiasAddBiasAdd*sequential_58/dense_182/Tensordot:output:06sequential_58/dense_182/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
sequential_58/dense_182/ReluRelu(sequential_58/dense_182/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ª
0sequential_58/dense_183/Tensordot/ReadVariableOpReadVariableOp9sequential_58_dense_183_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0p
&sequential_58/dense_183/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:w
&sequential_58/dense_183/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
'sequential_58/dense_183/Tensordot/ShapeShape*sequential_58/dense_182/Relu:activations:0*
T0*
_output_shapes
:q
/sequential_58/dense_183/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_183/Tensordot/GatherV2GatherV20sequential_58/dense_183/Tensordot/Shape:output:0/sequential_58/dense_183/Tensordot/free:output:08sequential_58/dense_183/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
1sequential_58/dense_183/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,sequential_58/dense_183/Tensordot/GatherV2_1GatherV20sequential_58/dense_183/Tensordot/Shape:output:0/sequential_58/dense_183/Tensordot/axes:output:0:sequential_58/dense_183/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
'sequential_58/dense_183/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_58/dense_183/Tensordot/ProdProd3sequential_58/dense_183/Tensordot/GatherV2:output:00sequential_58/dense_183/Tensordot/Const:output:0*
T0*
_output_shapes
: s
)sequential_58/dense_183/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¼
(sequential_58/dense_183/Tensordot/Prod_1Prod5sequential_58/dense_183/Tensordot/GatherV2_1:output:02sequential_58/dense_183/Tensordot/Const_1:output:0*
T0*
_output_shapes
: o
-sequential_58/dense_183/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
(sequential_58/dense_183/Tensordot/concatConcatV2/sequential_58/dense_183/Tensordot/free:output:0/sequential_58/dense_183/Tensordot/axes:output:06sequential_58/dense_183/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
'sequential_58/dense_183/Tensordot/stackPack/sequential_58/dense_183/Tensordot/Prod:output:01sequential_58/dense_183/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Í
+sequential_58/dense_183/Tensordot/transpose	Transpose*sequential_58/dense_182/Relu:activations:01sequential_58/dense_183/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ò
)sequential_58/dense_183/Tensordot/ReshapeReshape/sequential_58/dense_183/Tensordot/transpose:y:00sequential_58/dense_183/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
(sequential_58/dense_183/Tensordot/MatMulMatMul2sequential_58/dense_183/Tensordot/Reshape:output:08sequential_58/dense_183/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
)sequential_58/dense_183/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2q
/sequential_58/dense_183/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_183/Tensordot/concat_1ConcatV23sequential_58/dense_183/Tensordot/GatherV2:output:02sequential_58/dense_183/Tensordot/Const_2:output:08sequential_58/dense_183/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ë
!sequential_58/dense_183/TensordotReshape2sequential_58/dense_183/Tensordot/MatMul:product:03sequential_58/dense_183/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.sequential_58/dense_183/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_183_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ä
sequential_58/dense_183/BiasAddBiasAdd*sequential_58/dense_183/Tensordot:output:06sequential_58/dense_183/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_117/IdentityIdentity(sequential_58/dense_183/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2+layer_normalization_116/batchnorm/add_1:z:0dropout_117/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization_117/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¿
$layer_normalization_117/moments/meanMean	add_1:z:0?layer_normalization_117/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(¡
,layer_normalization_117/moments/StopGradientStopGradient-layer_normalization_117/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¾
1layer_normalization_117/moments/SquaredDifferenceSquaredDifference	add_1:z:05layer_normalization_117/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:layer_normalization_117/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_117/moments/varianceMean5layer_normalization_117/moments/SquaredDifference:z:0Clayer_normalization_117/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(l
'layer_normalization_117/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_117/batchnorm/addAddV21layer_normalization_117/moments/variance:output:00layer_normalization_117/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'layer_normalization_117/batchnorm/RsqrtRsqrt)layer_normalization_117/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
4layer_normalization_117/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_117_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Í
%layer_normalization_117/batchnorm/mulMul+layer_normalization_117/batchnorm/Rsqrt:y:0<layer_normalization_117/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'layer_normalization_117/batchnorm/mul_1Mul	add_1:z:0)layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_117/batchnorm/mul_2Mul-layer_normalization_117/moments/mean:output:0)layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¦
0layer_normalization_117/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_117_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0É
%layer_normalization_117/batchnorm/subSub8layer_normalization_117/batchnorm/ReadVariableOp:value:0+layer_normalization_117/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_117/batchnorm/add_1AddV2+layer_normalization_117/batchnorm/mul_1:z:0)layer_normalization_117/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
IdentityIdentity+layer_normalization_117/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2´
NoOpNoOp1^layer_normalization_116/batchnorm/ReadVariableOp5^layer_normalization_116/batchnorm/mul/ReadVariableOp1^layer_normalization_117/batchnorm/ReadVariableOp5^layer_normalization_117/batchnorm/mul/ReadVariableOp<^multi_head_attention_58/attention_output/add/ReadVariableOpF^multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp/^multi_head_attention_58/key/add/ReadVariableOp9^multi_head_attention_58/key/einsum/Einsum/ReadVariableOp1^multi_head_attention_58/query/add/ReadVariableOp;^multi_head_attention_58/query/einsum/Einsum/ReadVariableOp1^multi_head_attention_58/value/add/ReadVariableOp;^multi_head_attention_58/value/einsum/Einsum/ReadVariableOp/^sequential_58/dense_182/BiasAdd/ReadVariableOp1^sequential_58/dense_182/Tensordot/ReadVariableOp/^sequential_58/dense_183/BiasAdd/ReadVariableOp1^sequential_58/dense_183/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2d
0layer_normalization_116/batchnorm/ReadVariableOp0layer_normalization_116/batchnorm/ReadVariableOp2l
4layer_normalization_116/batchnorm/mul/ReadVariableOp4layer_normalization_116/batchnorm/mul/ReadVariableOp2d
0layer_normalization_117/batchnorm/ReadVariableOp0layer_normalization_117/batchnorm/ReadVariableOp2l
4layer_normalization_117/batchnorm/mul/ReadVariableOp4layer_normalization_117/batchnorm/mul/ReadVariableOp2z
;multi_head_attention_58/attention_output/add/ReadVariableOp;multi_head_attention_58/attention_output/add/ReadVariableOp2
Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpEmulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp2`
.multi_head_attention_58/key/add/ReadVariableOp.multi_head_attention_58/key/add/ReadVariableOp2t
8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_58/query/add/ReadVariableOp0multi_head_attention_58/query/add/ReadVariableOp2x
:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_58/value/add/ReadVariableOp0multi_head_attention_58/value/add/ReadVariableOp2x
:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp2`
.sequential_58/dense_182/BiasAdd/ReadVariableOp.sequential_58/dense_182/BiasAdd/ReadVariableOp2d
0sequential_58/dense_182/Tensordot/ReadVariableOp0sequential_58/dense_182/Tensordot/ReadVariableOp2`
.sequential_58/dense_183/BiasAdd/ReadVariableOp.sequential_58/dense_183/BiasAdd/ReadVariableOp2d
0sequential_58/dense_183/Tensordot/ReadVariableOp0sequential_58/dense_183/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ñ8
È
while_body_2653461
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_6_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_6/BiasAdd/ReadVariableOp¢'while/lstm_cell_6/MatMul/ReadVariableOp¢)while/lstm_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
ì(
²
E__inference_model_55_layer_call_and_return_conditional_losses_2651765
input_609
'token_and_position_embedding_59_2651709:.2:
'token_and_position_embedding_59_2651711:	24
transformer_encoder_58_2651714:220
transformer_encoder_58_2651716:24
transformer_encoder_58_2651718:220
transformer_encoder_58_2651720:24
transformer_encoder_58_2651722:220
transformer_encoder_58_2651724:24
transformer_encoder_58_2651726:22,
transformer_encoder_58_2651728:2,
transformer_encoder_58_2651730:2,
transformer_encoder_58_2651732:20
transformer_encoder_58_2651734:2 ,
transformer_encoder_58_2651736: 0
transformer_encoder_58_2651738: 2,
transformer_encoder_58_2651740:2,
transformer_encoder_58_2651742:2,
transformer_encoder_58_2651744:2 
rnn_6_2651747:	2¸ 
rnn_6_2651749:	.¸
rnn_6_2651751:	¸#
dense_186_2651754:..
dense_186_2651756:.#
dense_187_2651759:.
dense_187_2651761:
identity¢!dense_186/StatefulPartitionedCall¢!dense_187/StatefulPartitionedCall¢rnn_6/StatefulPartitionedCall¢7token_and_position_embedding_59/StatefulPartitionedCall¢.transformer_encoder_58/StatefulPartitionedCallÕ
7token_and_position_embedding_59/StatefulPartitionedCallStatefulPartitionedCallinput_60'token_and_position_embedding_59_2651709'token_and_position_embedding_59_2651711*
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
GPU 2J 8 *e
f`R^
\__inference_token_and_position_embedding_59_layer_call_and_return_conditional_losses_2650607Å
.transformer_encoder_58/StatefulPartitionedCallStatefulPartitionedCall@token_and_position_embedding_59/StatefulPartitionedCall:output:0transformer_encoder_58_2651714transformer_encoder_58_2651716transformer_encoder_58_2651718transformer_encoder_58_2651720transformer_encoder_58_2651722transformer_encoder_58_2651724transformer_encoder_58_2651726transformer_encoder_58_2651728transformer_encoder_58_2651730transformer_encoder_58_2651732transformer_encoder_58_2651734transformer_encoder_58_2651736transformer_encoder_58_2651738transformer_encoder_58_2651740transformer_encoder_58_2651742transformer_encoder_58_2651744*
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
GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2651378©
rnn_6/StatefulPartitionedCallStatefulPartitionedCall7transformer_encoder_58/StatefulPartitionedCall:output:0rnn_6_2651747rnn_6_2651749rnn_6_2651751*
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
GPU 2J 8 *K
fFRD
B__inference_rnn_6_layer_call_and_return_conditional_losses_2651189
!dense_186/StatefulPartitionedCallStatefulPartitionedCall&rnn_6/StatefulPartitionedCall:output:0dense_186_2651754dense_186_2651756*
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
GPU 2J 8 *O
fJRH
F__inference_dense_186_layer_call_and_return_conditional_losses_2650936
!dense_187/StatefulPartitionedCallStatefulPartitionedCall*dense_186/StatefulPartitionedCall:output:0dense_187_2651759dense_187_2651761*
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
GPU 2J 8 *O
fJRH
F__inference_dense_187_layer_call_and_return_conditional_losses_2650952y
IdentityIdentity*dense_187/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp"^dense_186/StatefulPartitionedCall"^dense_187/StatefulPartitionedCall^rnn_6/StatefulPartitionedCall8^token_and_position_embedding_59/StatefulPartitionedCall/^transformer_encoder_58/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2F
!dense_186/StatefulPartitionedCall!dense_186/StatefulPartitionedCall2F
!dense_187/StatefulPartitionedCall!dense_187/StatefulPartitionedCall2>
rnn_6/StatefulPartitionedCallrnn_6/StatefulPartitionedCall2r
7token_and_position_embedding_59/StatefulPartitionedCall7token_and_position_embedding_59/StatefulPartitionedCall2`
.transformer_encoder_58/StatefulPartitionedCall.transformer_encoder_58/StatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
input_60

¶
'__inference_rnn_6_layer_call_fn_2652936
inputs_0
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallæ
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
GPU 2J 8 *K
fFRD
B__inference_rnn_6_layer_call_and_return_conditional_losses_2650375o
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
Ñ8
È
while_body_2653317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_6_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_6/BiasAdd/ReadVariableOp¢'while/lstm_cell_6/MatMul/ReadVariableOp¢)while/lstm_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
Ñ8
È
while_body_2653173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_6_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_6/BiasAdd/ReadVariableOp¢'while/lstm_cell_6/MatMul/ReadVariableOp¢)while/lstm_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
²
Ò
/__inference_sequential_58_layer_call_fn_2653610

inputs
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCallý
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
GPU 2J 8 *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650172s
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
ºJ
¨
!model_55_rnn_6_while_body_2649934:
6model_55_rnn_6_while_model_55_rnn_6_while_loop_counter@
<model_55_rnn_6_while_model_55_rnn_6_while_maximum_iterations$
 model_55_rnn_6_while_placeholder&
"model_55_rnn_6_while_placeholder_1&
"model_55_rnn_6_while_placeholder_2&
"model_55_rnn_6_while_placeholder_39
5model_55_rnn_6_while_model_55_rnn_6_strided_slice_1_0u
qmodel_55_rnn_6_while_tensorarrayv2read_tensorlistgetitem_model_55_rnn_6_tensorarrayunstack_tensorlistfromtensor_0T
Amodel_55_rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0:	2¸V
Cmodel_55_rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.¸Q
Bmodel_55_rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0:	¸!
model_55_rnn_6_while_identity#
model_55_rnn_6_while_identity_1#
model_55_rnn_6_while_identity_2#
model_55_rnn_6_while_identity_3#
model_55_rnn_6_while_identity_4#
model_55_rnn_6_while_identity_57
3model_55_rnn_6_while_model_55_rnn_6_strided_slice_1s
omodel_55_rnn_6_while_tensorarrayv2read_tensorlistgetitem_model_55_rnn_6_tensorarrayunstack_tensorlistfromtensorR
?model_55_rnn_6_while_lstm_cell_6_matmul_readvariableop_resource:	2¸T
Amodel_55_rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource:	.¸O
@model_55_rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource:	¸¢7model_55/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp¢6model_55/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp¢8model_55/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp
Fmodel_55/rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ñ
8model_55/rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqmodel_55_rnn_6_while_tensorarrayv2read_tensorlistgetitem_model_55_rnn_6_tensorarrayunstack_tensorlistfromtensor_0 model_55_rnn_6_while_placeholderOmodel_55/rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¹
6model_55/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOpAmodel_55_rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0å
'model_55/rnn_6/while/lstm_cell_6/MatMulMatMul?model_55/rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0>model_55/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸½
8model_55/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOpCmodel_55_rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0Ì
)model_55/rnn_6/while/lstm_cell_6/MatMul_1MatMul"model_55_rnn_6_while_placeholder_2@model_55/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸È
$model_55/rnn_6/while/lstm_cell_6/addAddV21model_55/rnn_6/while/lstm_cell_6/MatMul:product:03model_55/rnn_6/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸·
7model_55/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOpBmodel_55_rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0Ñ
(model_55/rnn_6/while/lstm_cell_6/BiasAddBiasAdd(model_55/rnn_6/while/lstm_cell_6/add:z:0?model_55/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸r
0model_55/rnn_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&model_55/rnn_6/while/lstm_cell_6/splitSplit9model_55/rnn_6/while/lstm_cell_6/split/split_dim:output:01model_55/rnn_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
(model_55/rnn_6/while/lstm_cell_6/SigmoidSigmoid/model_55/rnn_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
*model_55/rnn_6/while/lstm_cell_6/Sigmoid_1Sigmoid/model_55/rnn_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.±
$model_55/rnn_6/while/lstm_cell_6/mulMul.model_55/rnn_6/while/lstm_cell_6/Sigmoid_1:y:0"model_55_rnn_6_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%model_55/rnn_6/while/lstm_cell_6/TanhTanh/model_55/rnn_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¸
&model_55/rnn_6/while/lstm_cell_6/mul_1Mul,model_55/rnn_6/while/lstm_cell_6/Sigmoid:y:0)model_55/rnn_6/while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.·
&model_55/rnn_6/while/lstm_cell_6/add_1AddV2(model_55/rnn_6/while/lstm_cell_6/mul:z:0*model_55/rnn_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
*model_55/rnn_6/while/lstm_cell_6/Sigmoid_2Sigmoid/model_55/rnn_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'model_55/rnn_6/while/lstm_cell_6/Tanh_1Tanh*model_55/rnn_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¼
&model_55/rnn_6/while/lstm_cell_6/mul_2Mul.model_55/rnn_6/while/lstm_cell_6/Sigmoid_2:y:0+model_55/rnn_6/while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
?model_55/rnn_6/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¨
9model_55/rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"model_55_rnn_6_while_placeholder_1Hmodel_55/rnn_6/while/TensorArrayV2Write/TensorListSetItem/index:output:0*model_55/rnn_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ\
model_55/rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
model_55/rnn_6/while/addAddV2 model_55_rnn_6_while_placeholder#model_55/rnn_6/while/add/y:output:0*
T0*
_output_shapes
: ^
model_55/rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
model_55/rnn_6/while/add_1AddV26model_55_rnn_6_while_model_55_rnn_6_while_loop_counter%model_55/rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: 
model_55/rnn_6/while/IdentityIdentitymodel_55/rnn_6/while/add_1:z:0^model_55/rnn_6/while/NoOp*
T0*
_output_shapes
: ¦
model_55/rnn_6/while/Identity_1Identity<model_55_rnn_6_while_model_55_rnn_6_while_maximum_iterations^model_55/rnn_6/while/NoOp*
T0*
_output_shapes
: 
model_55/rnn_6/while/Identity_2Identitymodel_55/rnn_6/while/add:z:0^model_55/rnn_6/while/NoOp*
T0*
_output_shapes
: ³
model_55/rnn_6/while/Identity_3IdentityImodel_55/rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_55/rnn_6/while/NoOp*
T0*
_output_shapes
: ¥
model_55/rnn_6/while/Identity_4Identity*model_55/rnn_6/while/lstm_cell_6/mul_2:z:0^model_55/rnn_6/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¥
model_55/rnn_6/while/Identity_5Identity*model_55/rnn_6/while/lstm_cell_6/add_1:z:0^model_55/rnn_6/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_55/rnn_6/while/NoOpNoOp8^model_55/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp7^model_55/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp9^model_55/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
model_55_rnn_6_while_identity&model_55/rnn_6/while/Identity:output:0"K
model_55_rnn_6_while_identity_1(model_55/rnn_6/while/Identity_1:output:0"K
model_55_rnn_6_while_identity_2(model_55/rnn_6/while/Identity_2:output:0"K
model_55_rnn_6_while_identity_3(model_55/rnn_6/while/Identity_3:output:0"K
model_55_rnn_6_while_identity_4(model_55/rnn_6/while/Identity_4:output:0"K
model_55_rnn_6_while_identity_5(model_55/rnn_6/while/Identity_5:output:0"
@model_55_rnn_6_while_lstm_cell_6_biasadd_readvariableop_resourceBmodel_55_rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"
Amodel_55_rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resourceCmodel_55_rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"
?model_55_rnn_6_while_lstm_cell_6_matmul_readvariableop_resourceAmodel_55_rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0"l
3model_55_rnn_6_while_model_55_rnn_6_strided_slice_15model_55_rnn_6_while_model_55_rnn_6_strided_slice_1_0"ä
omodel_55_rnn_6_while_tensorarrayv2read_tensorlistgetitem_model_55_rnn_6_tensorarrayunstack_tensorlistfromtensorqmodel_55_rnn_6_while_tensorarrayv2read_tensorlistgetitem_model_55_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2r
7model_55/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp7model_55/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2p
6model_55/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp6model_55/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp2t
8model_55/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp8model_55/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
É	
÷
F__inference_dense_187_layer_call_and_return_conditional_losses_2650952

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
üI

B__inference_rnn_6_layer_call_and_return_conditional_losses_2653545

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	2¸?
,lstm_cell_6_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_6_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_6/BiasAdd/ReadVariableOp¢!lstm_cell_6/MatMul/ReadVariableOp¢#lstm_cell_6/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_2653461*
condR
while_cond_2653460*K
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
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
õ
´
'__inference_rnn_6_layer_call_fn_2652958

inputs
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallä
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
GPU 2J 8 *K
fFRD
B__inference_rnn_6_layer_call_and_return_conditional_losses_2650917o
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
Î
­
\__inference_token_and_position_embedding_59_layer_call_and_return_conditional_losses_2652584
x8
&embedding_119_embedding_lookup_2652571:.29
&embedding_118_embedding_lookup_2652577:	2
identity¢embedding_118/embedding_lookup¢embedding_119/embedding_lookup6
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
:.à
embedding_119/embedding_lookupResourceGather&embedding_119_embedding_lookup_2652571range:output:0*
Tindices0*9
_class/
-+loc:@embedding_119/embedding_lookup/2652571*
_output_shapes

:.2*
dtype0À
'embedding_119/embedding_lookup/IdentityIdentity'embedding_119/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_119/embedding_lookup/2652571*
_output_shapes

:.2
)embedding_119/embedding_lookup/Identity_1Identity0embedding_119/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2^
embedding_118/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.õ
embedding_118/embedding_lookupResourceGather&embedding_118_embedding_lookup_2652577embedding_118/Cast:y:0*
Tindices0*9
_class/
-+loc:@embedding_118/embedding_lookup/2652577*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0Í
'embedding_118/embedding_lookup/IdentityIdentity'embedding_118/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_118/embedding_lookup/2652577*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)embedding_118/embedding_lookup/Identity_1Identity0embedding_118/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ª
addAddV22embedding_118/embedding_lookup/Identity_1:output:02embedding_119/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp^embedding_118/embedding_lookup^embedding_119/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 2@
embedding_118/embedding_lookupembedding_118/embedding_lookup2@
embedding_119/embedding_lookupembedding_119/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.

_user_specified_namex
Î
­
\__inference_token_and_position_embedding_59_layer_call_and_return_conditional_losses_2650607
x8
&embedding_119_embedding_lookup_2650594:.29
&embedding_118_embedding_lookup_2650600:	2
identity¢embedding_118/embedding_lookup¢embedding_119/embedding_lookup6
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
:.à
embedding_119/embedding_lookupResourceGather&embedding_119_embedding_lookup_2650594range:output:0*
Tindices0*9
_class/
-+loc:@embedding_119/embedding_lookup/2650594*
_output_shapes

:.2*
dtype0À
'embedding_119/embedding_lookup/IdentityIdentity'embedding_119/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_119/embedding_lookup/2650594*
_output_shapes

:.2
)embedding_119/embedding_lookup/Identity_1Identity0embedding_119/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2^
embedding_118/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.õ
embedding_118/embedding_lookupResourceGather&embedding_118_embedding_lookup_2650600embedding_118/Cast:y:0*
Tindices0*9
_class/
-+loc:@embedding_118/embedding_lookup/2650600*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0Í
'embedding_118/embedding_lookup/IdentityIdentity'embedding_118/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_118/embedding_lookup/2650600*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)embedding_118/embedding_lookup/Identity_1Identity0embedding_118/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ª
addAddV22embedding_118/embedding_lookup/Identity_1:output:02embedding_119/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp^embedding_118/embedding_lookup^embedding_119/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 2@
embedding_118/embedding_lookupembedding_118/embedding_lookup2@
embedding_119/embedding_lookupembedding_119/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.

_user_specified_namex
ð³
Ú0
 __inference__traced_save_2654170
file_prefix/
+savev2_dense_186_kernel_read_readvariableop-
)savev2_dense_186_bias_read_readvariableop/
+savev2_dense_187_kernel_read_readvariableop-
)savev2_dense_187_bias_read_readvariableopW
Ssavev2_token_and_position_embedding_59_embedding_118_embeddings_read_readvariableopW
Ssavev2_token_and_position_embedding_59_embedding_119_embeddings_read_readvariableopZ
Vsavev2_transformer_encoder_58_multi_head_attention_58_query_kernel_read_readvariableopX
Tsavev2_transformer_encoder_58_multi_head_attention_58_query_bias_read_readvariableopX
Tsavev2_transformer_encoder_58_multi_head_attention_58_key_kernel_read_readvariableopV
Rsavev2_transformer_encoder_58_multi_head_attention_58_key_bias_read_readvariableopZ
Vsavev2_transformer_encoder_58_multi_head_attention_58_value_kernel_read_readvariableopX
Tsavev2_transformer_encoder_58_multi_head_attention_58_value_bias_read_readvariableope
asavev2_transformer_encoder_58_multi_head_attention_58_attention_output_kernel_read_readvariableopc
_savev2_transformer_encoder_58_multi_head_attention_58_attention_output_bias_read_readvariableop/
+savev2_dense_182_kernel_read_readvariableop-
)savev2_dense_182_bias_read_readvariableop/
+savev2_dense_183_kernel_read_readvariableop-
)savev2_dense_183_bias_read_readvariableopS
Osavev2_transformer_encoder_58_layer_normalization_116_gamma_read_readvariableopR
Nsavev2_transformer_encoder_58_layer_normalization_116_beta_read_readvariableopS
Osavev2_transformer_encoder_58_layer_normalization_117_gamma_read_readvariableopR
Nsavev2_transformer_encoder_58_layer_normalization_117_beta_read_readvariableop7
3savev2_rnn_6_lstm_cell_6_kernel_read_readvariableopA
=savev2_rnn_6_lstm_cell_6_recurrent_kernel_read_readvariableop5
1savev2_rnn_6_lstm_cell_6_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_186_kernel_m_read_readvariableop4
0savev2_adam_dense_186_bias_m_read_readvariableop6
2savev2_adam_dense_187_kernel_m_read_readvariableop4
0savev2_adam_dense_187_bias_m_read_readvariableop^
Zsavev2_adam_token_and_position_embedding_59_embedding_118_embeddings_m_read_readvariableop^
Zsavev2_adam_token_and_position_embedding_59_embedding_119_embeddings_m_read_readvariableopa
]savev2_adam_transformer_encoder_58_multi_head_attention_58_query_kernel_m_read_readvariableop_
[savev2_adam_transformer_encoder_58_multi_head_attention_58_query_bias_m_read_readvariableop_
[savev2_adam_transformer_encoder_58_multi_head_attention_58_key_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_58_multi_head_attention_58_key_bias_m_read_readvariableopa
]savev2_adam_transformer_encoder_58_multi_head_attention_58_value_kernel_m_read_readvariableop_
[savev2_adam_transformer_encoder_58_multi_head_attention_58_value_bias_m_read_readvariableopl
hsavev2_adam_transformer_encoder_58_multi_head_attention_58_attention_output_kernel_m_read_readvariableopj
fsavev2_adam_transformer_encoder_58_multi_head_attention_58_attention_output_bias_m_read_readvariableop6
2savev2_adam_dense_182_kernel_m_read_readvariableop4
0savev2_adam_dense_182_bias_m_read_readvariableop6
2savev2_adam_dense_183_kernel_m_read_readvariableop4
0savev2_adam_dense_183_bias_m_read_readvariableopZ
Vsavev2_adam_transformer_encoder_58_layer_normalization_116_gamma_m_read_readvariableopY
Usavev2_adam_transformer_encoder_58_layer_normalization_116_beta_m_read_readvariableopZ
Vsavev2_adam_transformer_encoder_58_layer_normalization_117_gamma_m_read_readvariableopY
Usavev2_adam_transformer_encoder_58_layer_normalization_117_beta_m_read_readvariableop>
:savev2_adam_rnn_6_lstm_cell_6_kernel_m_read_readvariableopH
Dsavev2_adam_rnn_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop<
8savev2_adam_rnn_6_lstm_cell_6_bias_m_read_readvariableop6
2savev2_adam_dense_186_kernel_v_read_readvariableop4
0savev2_adam_dense_186_bias_v_read_readvariableop6
2savev2_adam_dense_187_kernel_v_read_readvariableop4
0savev2_adam_dense_187_bias_v_read_readvariableop^
Zsavev2_adam_token_and_position_embedding_59_embedding_118_embeddings_v_read_readvariableop^
Zsavev2_adam_token_and_position_embedding_59_embedding_119_embeddings_v_read_readvariableopa
]savev2_adam_transformer_encoder_58_multi_head_attention_58_query_kernel_v_read_readvariableop_
[savev2_adam_transformer_encoder_58_multi_head_attention_58_query_bias_v_read_readvariableop_
[savev2_adam_transformer_encoder_58_multi_head_attention_58_key_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_58_multi_head_attention_58_key_bias_v_read_readvariableopa
]savev2_adam_transformer_encoder_58_multi_head_attention_58_value_kernel_v_read_readvariableop_
[savev2_adam_transformer_encoder_58_multi_head_attention_58_value_bias_v_read_readvariableopl
hsavev2_adam_transformer_encoder_58_multi_head_attention_58_attention_output_kernel_v_read_readvariableopj
fsavev2_adam_transformer_encoder_58_multi_head_attention_58_attention_output_bias_v_read_readvariableop6
2savev2_adam_dense_182_kernel_v_read_readvariableop4
0savev2_adam_dense_182_bias_v_read_readvariableop6
2savev2_adam_dense_183_kernel_v_read_readvariableop4
0savev2_adam_dense_183_bias_v_read_readvariableopZ
Vsavev2_adam_transformer_encoder_58_layer_normalization_116_gamma_v_read_readvariableopY
Usavev2_adam_transformer_encoder_58_layer_normalization_116_beta_v_read_readvariableopZ
Vsavev2_adam_transformer_encoder_58_layer_normalization_117_gamma_v_read_readvariableopY
Usavev2_adam_transformer_encoder_58_layer_normalization_117_beta_v_read_readvariableop>
:savev2_adam_rnn_6_lstm_cell_6_kernel_v_read_readvariableopH
Dsavev2_adam_rnn_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop<
8savev2_adam_rnn_6_lstm_cell_6_bias_v_read_readvariableop
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
: à'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*'
valueÿ&Bü&SB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*»
value±B®SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B §/
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_186_kernel_read_readvariableop)savev2_dense_186_bias_read_readvariableop+savev2_dense_187_kernel_read_readvariableop)savev2_dense_187_bias_read_readvariableopSsavev2_token_and_position_embedding_59_embedding_118_embeddings_read_readvariableopSsavev2_token_and_position_embedding_59_embedding_119_embeddings_read_readvariableopVsavev2_transformer_encoder_58_multi_head_attention_58_query_kernel_read_readvariableopTsavev2_transformer_encoder_58_multi_head_attention_58_query_bias_read_readvariableopTsavev2_transformer_encoder_58_multi_head_attention_58_key_kernel_read_readvariableopRsavev2_transformer_encoder_58_multi_head_attention_58_key_bias_read_readvariableopVsavev2_transformer_encoder_58_multi_head_attention_58_value_kernel_read_readvariableopTsavev2_transformer_encoder_58_multi_head_attention_58_value_bias_read_readvariableopasavev2_transformer_encoder_58_multi_head_attention_58_attention_output_kernel_read_readvariableop_savev2_transformer_encoder_58_multi_head_attention_58_attention_output_bias_read_readvariableop+savev2_dense_182_kernel_read_readvariableop)savev2_dense_182_bias_read_readvariableop+savev2_dense_183_kernel_read_readvariableop)savev2_dense_183_bias_read_readvariableopOsavev2_transformer_encoder_58_layer_normalization_116_gamma_read_readvariableopNsavev2_transformer_encoder_58_layer_normalization_116_beta_read_readvariableopOsavev2_transformer_encoder_58_layer_normalization_117_gamma_read_readvariableopNsavev2_transformer_encoder_58_layer_normalization_117_beta_read_readvariableop3savev2_rnn_6_lstm_cell_6_kernel_read_readvariableop=savev2_rnn_6_lstm_cell_6_recurrent_kernel_read_readvariableop1savev2_rnn_6_lstm_cell_6_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_186_kernel_m_read_readvariableop0savev2_adam_dense_186_bias_m_read_readvariableop2savev2_adam_dense_187_kernel_m_read_readvariableop0savev2_adam_dense_187_bias_m_read_readvariableopZsavev2_adam_token_and_position_embedding_59_embedding_118_embeddings_m_read_readvariableopZsavev2_adam_token_and_position_embedding_59_embedding_119_embeddings_m_read_readvariableop]savev2_adam_transformer_encoder_58_multi_head_attention_58_query_kernel_m_read_readvariableop[savev2_adam_transformer_encoder_58_multi_head_attention_58_query_bias_m_read_readvariableop[savev2_adam_transformer_encoder_58_multi_head_attention_58_key_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_58_multi_head_attention_58_key_bias_m_read_readvariableop]savev2_adam_transformer_encoder_58_multi_head_attention_58_value_kernel_m_read_readvariableop[savev2_adam_transformer_encoder_58_multi_head_attention_58_value_bias_m_read_readvariableophsavev2_adam_transformer_encoder_58_multi_head_attention_58_attention_output_kernel_m_read_readvariableopfsavev2_adam_transformer_encoder_58_multi_head_attention_58_attention_output_bias_m_read_readvariableop2savev2_adam_dense_182_kernel_m_read_readvariableop0savev2_adam_dense_182_bias_m_read_readvariableop2savev2_adam_dense_183_kernel_m_read_readvariableop0savev2_adam_dense_183_bias_m_read_readvariableopVsavev2_adam_transformer_encoder_58_layer_normalization_116_gamma_m_read_readvariableopUsavev2_adam_transformer_encoder_58_layer_normalization_116_beta_m_read_readvariableopVsavev2_adam_transformer_encoder_58_layer_normalization_117_gamma_m_read_readvariableopUsavev2_adam_transformer_encoder_58_layer_normalization_117_beta_m_read_readvariableop:savev2_adam_rnn_6_lstm_cell_6_kernel_m_read_readvariableopDsavev2_adam_rnn_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop8savev2_adam_rnn_6_lstm_cell_6_bias_m_read_readvariableop2savev2_adam_dense_186_kernel_v_read_readvariableop0savev2_adam_dense_186_bias_v_read_readvariableop2savev2_adam_dense_187_kernel_v_read_readvariableop0savev2_adam_dense_187_bias_v_read_readvariableopZsavev2_adam_token_and_position_embedding_59_embedding_118_embeddings_v_read_readvariableopZsavev2_adam_token_and_position_embedding_59_embedding_119_embeddings_v_read_readvariableop]savev2_adam_transformer_encoder_58_multi_head_attention_58_query_kernel_v_read_readvariableop[savev2_adam_transformer_encoder_58_multi_head_attention_58_query_bias_v_read_readvariableop[savev2_adam_transformer_encoder_58_multi_head_attention_58_key_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_58_multi_head_attention_58_key_bias_v_read_readvariableop]savev2_adam_transformer_encoder_58_multi_head_attention_58_value_kernel_v_read_readvariableop[savev2_adam_transformer_encoder_58_multi_head_attention_58_value_bias_v_read_readvariableophsavev2_adam_transformer_encoder_58_multi_head_attention_58_attention_output_kernel_v_read_readvariableopfsavev2_adam_transformer_encoder_58_multi_head_attention_58_attention_output_bias_v_read_readvariableop2savev2_adam_dense_182_kernel_v_read_readvariableop0savev2_adam_dense_182_bias_v_read_readvariableop2savev2_adam_dense_183_kernel_v_read_readvariableop0savev2_adam_dense_183_bias_v_read_readvariableopVsavev2_adam_transformer_encoder_58_layer_normalization_116_gamma_v_read_readvariableopUsavev2_adam_transformer_encoder_58_layer_normalization_116_beta_v_read_readvariableopVsavev2_adam_transformer_encoder_58_layer_normalization_117_gamma_v_read_readvariableopUsavev2_adam_transformer_encoder_58_layer_normalization_117_beta_v_read_readvariableop:savev2_adam_rnn_6_lstm_cell_6_kernel_v_read_readvariableopDsavev2_adam_rnn_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop8savev2_adam_rnn_6_lstm_cell_6_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *a
dtypesW
U2S	
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

identity_1Identity_1:output:0*Ù
_input_shapesÇ
Ä: :..:.:.::	2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸: : : : : : : :..:.:.::	2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸:..:.:.::	2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸: 2(
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
:	2:$ 

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
: :$! 

_output_shapes

:..: "

_output_shapes
:.:$# 

_output_shapes

:.: $

_output_shapes
::%%!

_output_shapes
:	2:$& 

_output_shapes

:.2:('$
"
_output_shapes
:22:$( 

_output_shapes

:2:()$
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
:22: .

_output_shapes
:2:$/ 

_output_shapes

:2 : 0

_output_shapes
: :$1 

_output_shapes

: 2: 2

_output_shapes
:2: 3

_output_shapes
:2: 4

_output_shapes
:2: 5

_output_shapes
:2: 6

_output_shapes
:2:%7!

_output_shapes
:	2¸:%8!

_output_shapes
:	.¸:!9

_output_shapes	
:¸:$: 

_output_shapes

:..: ;

_output_shapes
:.:$< 

_output_shapes

:.: =

_output_shapes
::%>!

_output_shapes
:	2:$? 

_output_shapes

:.2:(@$
"
_output_shapes
:22:$A 

_output_shapes

:2:(B$
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
:22: G

_output_shapes
:2:$H 

_output_shapes

:2 : I

_output_shapes
: :$J 

_output_shapes

: 2: K

_output_shapes
:2: L

_output_shapes
:2: M

_output_shapes
:2: N

_output_shapes
:2: O

_output_shapes
:2:%P!

_output_shapes
:	2¸:%Q!

_output_shapes
:	.¸:!R

_output_shapes	
:¸:S

_output_shapes
: 
º
È
while_cond_2650305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2650305___redundant_placeholder05
1while_while_cond_2650305___redundant_placeholder15
1while_while_cond_2650305___redundant_placeholder25
1while_while_cond_2650305___redundant_placeholder3
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
É	
÷
F__inference_dense_187_layer_call_and_return_conditional_losses_2653584

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
ÝÜ
õA
#__inference__traced_restore_2654426
file_prefix3
!assignvariableop_dense_186_kernel:../
!assignvariableop_1_dense_186_bias:.5
#assignvariableop_2_dense_187_kernel:./
!assignvariableop_3_dense_187_bias:^
Kassignvariableop_4_token_and_position_embedding_59_embedding_118_embeddings:	2]
Kassignvariableop_5_token_and_position_embedding_59_embedding_119_embeddings:.2d
Nassignvariableop_6_transformer_encoder_58_multi_head_attention_58_query_kernel:22^
Lassignvariableop_7_transformer_encoder_58_multi_head_attention_58_query_bias:2b
Lassignvariableop_8_transformer_encoder_58_multi_head_attention_58_key_kernel:22\
Jassignvariableop_9_transformer_encoder_58_multi_head_attention_58_key_bias:2e
Oassignvariableop_10_transformer_encoder_58_multi_head_attention_58_value_kernel:22_
Massignvariableop_11_transformer_encoder_58_multi_head_attention_58_value_bias:2p
Zassignvariableop_12_transformer_encoder_58_multi_head_attention_58_attention_output_kernel:22f
Xassignvariableop_13_transformer_encoder_58_multi_head_attention_58_attention_output_bias:26
$assignvariableop_14_dense_182_kernel:2 0
"assignvariableop_15_dense_182_bias: 6
$assignvariableop_16_dense_183_kernel: 20
"assignvariableop_17_dense_183_bias:2V
Hassignvariableop_18_transformer_encoder_58_layer_normalization_116_gamma:2U
Gassignvariableop_19_transformer_encoder_58_layer_normalization_116_beta:2V
Hassignvariableop_20_transformer_encoder_58_layer_normalization_117_gamma:2U
Gassignvariableop_21_transformer_encoder_58_layer_normalization_117_beta:2?
,assignvariableop_22_rnn_6_lstm_cell_6_kernel:	2¸I
6assignvariableop_23_rnn_6_lstm_cell_6_recurrent_kernel:	.¸9
*assignvariableop_24_rnn_6_lstm_cell_6_bias:	¸'
assignvariableop_25_adam_iter:	 )
assignvariableop_26_adam_beta_1: )
assignvariableop_27_adam_beta_2: (
assignvariableop_28_adam_decay: 0
&assignvariableop_29_adam_learning_rate: #
assignvariableop_30_total: #
assignvariableop_31_count: =
+assignvariableop_32_adam_dense_186_kernel_m:..7
)assignvariableop_33_adam_dense_186_bias_m:.=
+assignvariableop_34_adam_dense_187_kernel_m:.7
)assignvariableop_35_adam_dense_187_bias_m:f
Sassignvariableop_36_adam_token_and_position_embedding_59_embedding_118_embeddings_m:	2e
Sassignvariableop_37_adam_token_and_position_embedding_59_embedding_119_embeddings_m:.2l
Vassignvariableop_38_adam_transformer_encoder_58_multi_head_attention_58_query_kernel_m:22f
Tassignvariableop_39_adam_transformer_encoder_58_multi_head_attention_58_query_bias_m:2j
Tassignvariableop_40_adam_transformer_encoder_58_multi_head_attention_58_key_kernel_m:22d
Rassignvariableop_41_adam_transformer_encoder_58_multi_head_attention_58_key_bias_m:2l
Vassignvariableop_42_adam_transformer_encoder_58_multi_head_attention_58_value_kernel_m:22f
Tassignvariableop_43_adam_transformer_encoder_58_multi_head_attention_58_value_bias_m:2w
aassignvariableop_44_adam_transformer_encoder_58_multi_head_attention_58_attention_output_kernel_m:22m
_assignvariableop_45_adam_transformer_encoder_58_multi_head_attention_58_attention_output_bias_m:2=
+assignvariableop_46_adam_dense_182_kernel_m:2 7
)assignvariableop_47_adam_dense_182_bias_m: =
+assignvariableop_48_adam_dense_183_kernel_m: 27
)assignvariableop_49_adam_dense_183_bias_m:2]
Oassignvariableop_50_adam_transformer_encoder_58_layer_normalization_116_gamma_m:2\
Nassignvariableop_51_adam_transformer_encoder_58_layer_normalization_116_beta_m:2]
Oassignvariableop_52_adam_transformer_encoder_58_layer_normalization_117_gamma_m:2\
Nassignvariableop_53_adam_transformer_encoder_58_layer_normalization_117_beta_m:2F
3assignvariableop_54_adam_rnn_6_lstm_cell_6_kernel_m:	2¸P
=assignvariableop_55_adam_rnn_6_lstm_cell_6_recurrent_kernel_m:	.¸@
1assignvariableop_56_adam_rnn_6_lstm_cell_6_bias_m:	¸=
+assignvariableop_57_adam_dense_186_kernel_v:..7
)assignvariableop_58_adam_dense_186_bias_v:.=
+assignvariableop_59_adam_dense_187_kernel_v:.7
)assignvariableop_60_adam_dense_187_bias_v:f
Sassignvariableop_61_adam_token_and_position_embedding_59_embedding_118_embeddings_v:	2e
Sassignvariableop_62_adam_token_and_position_embedding_59_embedding_119_embeddings_v:.2l
Vassignvariableop_63_adam_transformer_encoder_58_multi_head_attention_58_query_kernel_v:22f
Tassignvariableop_64_adam_transformer_encoder_58_multi_head_attention_58_query_bias_v:2j
Tassignvariableop_65_adam_transformer_encoder_58_multi_head_attention_58_key_kernel_v:22d
Rassignvariableop_66_adam_transformer_encoder_58_multi_head_attention_58_key_bias_v:2l
Vassignvariableop_67_adam_transformer_encoder_58_multi_head_attention_58_value_kernel_v:22f
Tassignvariableop_68_adam_transformer_encoder_58_multi_head_attention_58_value_bias_v:2w
aassignvariableop_69_adam_transformer_encoder_58_multi_head_attention_58_attention_output_kernel_v:22m
_assignvariableop_70_adam_transformer_encoder_58_multi_head_attention_58_attention_output_bias_v:2=
+assignvariableop_71_adam_dense_182_kernel_v:2 7
)assignvariableop_72_adam_dense_182_bias_v: =
+assignvariableop_73_adam_dense_183_kernel_v: 27
)assignvariableop_74_adam_dense_183_bias_v:2]
Oassignvariableop_75_adam_transformer_encoder_58_layer_normalization_116_gamma_v:2\
Nassignvariableop_76_adam_transformer_encoder_58_layer_normalization_116_beta_v:2]
Oassignvariableop_77_adam_transformer_encoder_58_layer_normalization_117_gamma_v:2\
Nassignvariableop_78_adam_transformer_encoder_58_layer_normalization_117_beta_v:2F
3assignvariableop_79_adam_rnn_6_lstm_cell_6_kernel_v:	2¸P
=assignvariableop_80_adam_rnn_6_lstm_cell_6_recurrent_kernel_v:	.¸@
1assignvariableop_81_adam_rnn_6_lstm_cell_6_bias_v:	¸
identity_83¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_9ã'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*'
valueÿ&Bü&SB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*»
value±B®SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B À
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*â
_output_shapesÏ
Ì:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*a
dtypesW
U2S	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_dense_186_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_186_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_187_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_187_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_4AssignVariableOpKassignvariableop_4_token_and_position_embedding_59_embedding_118_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_5AssignVariableOpKassignvariableop_5_token_and_position_embedding_59_embedding_119_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_6AssignVariableOpNassignvariableop_6_transformer_encoder_58_multi_head_attention_58_query_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_7AssignVariableOpLassignvariableop_7_transformer_encoder_58_multi_head_attention_58_query_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_8AssignVariableOpLassignvariableop_8_transformer_encoder_58_multi_head_attention_58_key_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_9AssignVariableOpJassignvariableop_9_transformer_encoder_58_multi_head_attention_58_key_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_10AssignVariableOpOassignvariableop_10_transformer_encoder_58_multi_head_attention_58_value_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_11AssignVariableOpMassignvariableop_11_transformer_encoder_58_multi_head_attention_58_value_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ë
AssignVariableOp_12AssignVariableOpZassignvariableop_12_transformer_encoder_58_multi_head_attention_58_attention_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_13AssignVariableOpXassignvariableop_13_transformer_encoder_58_multi_head_attention_58_attention_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp$assignvariableop_14_dense_182_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_182_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp$assignvariableop_16_dense_183_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp"assignvariableop_17_dense_183_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_18AssignVariableOpHassignvariableop_18_transformer_encoder_58_layer_normalization_116_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_19AssignVariableOpGassignvariableop_19_transformer_encoder_58_layer_normalization_116_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_20AssignVariableOpHassignvariableop_20_transformer_encoder_58_layer_normalization_117_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_21AssignVariableOpGassignvariableop_21_transformer_encoder_58_layer_normalization_117_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp,assignvariableop_22_rnn_6_lstm_cell_6_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_rnn_6_lstm_cell_6_recurrent_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp*assignvariableop_24_rnn_6_lstm_cell_6_biasIdentity_24:output:0"/device:CPU:0*
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
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_totalIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_countIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_dense_186_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_186_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_dense_187_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_187_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_36AssignVariableOpSassignvariableop_36_adam_token_and_position_embedding_59_embedding_118_embeddings_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_37AssignVariableOpSassignvariableop_37_adam_token_and_position_embedding_59_embedding_119_embeddings_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_38AssignVariableOpVassignvariableop_38_adam_transformer_encoder_58_multi_head_attention_58_query_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_39AssignVariableOpTassignvariableop_39_adam_transformer_encoder_58_multi_head_attention_58_query_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_40AssignVariableOpTassignvariableop_40_adam_transformer_encoder_58_multi_head_attention_58_key_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_encoder_58_multi_head_attention_58_key_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_42AssignVariableOpVassignvariableop_42_adam_transformer_encoder_58_multi_head_attention_58_value_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_43AssignVariableOpTassignvariableop_43_adam_transformer_encoder_58_multi_head_attention_58_value_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ò
AssignVariableOp_44AssignVariableOpaassignvariableop_44_adam_transformer_encoder_58_multi_head_attention_58_attention_output_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_45AssignVariableOp_assignvariableop_45_adam_transformer_encoder_58_multi_head_attention_58_attention_output_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_dense_182_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_182_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_dense_183_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_183_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_50AssignVariableOpOassignvariableop_50_adam_transformer_encoder_58_layer_normalization_116_gamma_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_51AssignVariableOpNassignvariableop_51_adam_transformer_encoder_58_layer_normalization_116_beta_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_52AssignVariableOpOassignvariableop_52_adam_transformer_encoder_58_layer_normalization_117_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_53AssignVariableOpNassignvariableop_53_adam_transformer_encoder_58_layer_normalization_117_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_54AssignVariableOp3assignvariableop_54_adam_rnn_6_lstm_cell_6_kernel_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_55AssignVariableOp=assignvariableop_55_adam_rnn_6_lstm_cell_6_recurrent_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_56AssignVariableOp1assignvariableop_56_adam_rnn_6_lstm_cell_6_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_dense_186_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_186_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_dense_187_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_dense_187_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_61AssignVariableOpSassignvariableop_61_adam_token_and_position_embedding_59_embedding_118_embeddings_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_62AssignVariableOpSassignvariableop_62_adam_token_and_position_embedding_59_embedding_119_embeddings_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_63AssignVariableOpVassignvariableop_63_adam_transformer_encoder_58_multi_head_attention_58_query_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_64AssignVariableOpTassignvariableop_64_adam_transformer_encoder_58_multi_head_attention_58_query_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_65AssignVariableOpTassignvariableop_65_adam_transformer_encoder_58_multi_head_attention_58_key_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_66AssignVariableOpRassignvariableop_66_adam_transformer_encoder_58_multi_head_attention_58_key_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_67AssignVariableOpVassignvariableop_67_adam_transformer_encoder_58_multi_head_attention_58_value_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_68AssignVariableOpTassignvariableop_68_adam_transformer_encoder_58_multi_head_attention_58_value_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Ò
AssignVariableOp_69AssignVariableOpaassignvariableop_69_adam_transformer_encoder_58_multi_head_attention_58_attention_output_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_70AssignVariableOp_assignvariableop_70_adam_transformer_encoder_58_multi_head_attention_58_attention_output_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_dense_182_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_dense_182_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_dense_183_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_dense_183_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_75AssignVariableOpOassignvariableop_75_adam_transformer_encoder_58_layer_normalization_116_gamma_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_76AssignVariableOpNassignvariableop_76_adam_transformer_encoder_58_layer_normalization_116_beta_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_77AssignVariableOpOassignvariableop_77_adam_transformer_encoder_58_layer_normalization_117_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:¿
AssignVariableOp_78AssignVariableOpNassignvariableop_78_adam_transformer_encoder_58_layer_normalization_117_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_79AssignVariableOp3assignvariableop_79_adam_rnn_6_lstm_cell_6_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_80AssignVariableOp=assignvariableop_80_adam_rnn_6_lstm_cell_6_recurrent_kernel_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_81AssignVariableOp1assignvariableop_81_adam_rnn_6_lstm_cell_6_bias_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Û
Identity_82Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_83IdentityIdentity_82:output:0^NoOp_1*
T0*
_output_shapes
: È
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_83Identity_83:output:0*»
_input_shapes©
¦: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_81AssignVariableOp_812(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ñ8
È
while_body_2650833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_6_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_6/BiasAdd/ReadVariableOp¢'while/lstm_cell_6/MatMul/ReadVariableOp¢)while/lstm_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
üI

B__inference_rnn_6_layer_call_and_return_conditional_losses_2653401

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	2¸?
,lstm_cell_6_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_6_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_6/BiasAdd/ReadVariableOp¢!lstm_cell_6/MatMul/ReadVariableOp¢#lstm_cell_6/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_2653317*
condR
while_cond_2653316*K
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
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ú@
é
J__inference_sequential_58_layer_call_and_return_conditional_losses_2653724

inputs=
+dense_182_tensordot_readvariableop_resource:2 7
)dense_182_biasadd_readvariableop_resource: =
+dense_183_tensordot_readvariableop_resource: 27
)dense_183_biasadd_readvariableop_resource:2
identity¢ dense_182/BiasAdd/ReadVariableOp¢"dense_182/Tensordot/ReadVariableOp¢ dense_183/BiasAdd/ReadVariableOp¢"dense_183/Tensordot/ReadVariableOp
"dense_182/Tensordot/ReadVariableOpReadVariableOp+dense_182_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0b
dense_182/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense_182/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       O
dense_182/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:c
!dense_182/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_182/Tensordot/GatherV2GatherV2"dense_182/Tensordot/Shape:output:0!dense_182/Tensordot/free:output:0*dense_182/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
#dense_182/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
dense_182/Tensordot/GatherV2_1GatherV2"dense_182/Tensordot/Shape:output:0!dense_182/Tensordot/axes:output:0,dense_182/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
dense_182/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_182/Tensordot/ProdProd%dense_182/Tensordot/GatherV2:output:0"dense_182/Tensordot/Const:output:0*
T0*
_output_shapes
: e
dense_182/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_182/Tensordot/Prod_1Prod'dense_182/Tensordot/GatherV2_1:output:0$dense_182/Tensordot/Const_1:output:0*
T0*
_output_shapes
: a
dense_182/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ä
dense_182/Tensordot/concatConcatV2!dense_182/Tensordot/free:output:0!dense_182/Tensordot/axes:output:0(dense_182/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_182/Tensordot/stackPack!dense_182/Tensordot/Prod:output:0#dense_182/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_182/Tensordot/transpose	Transposeinputs#dense_182/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¨
dense_182/Tensordot/ReshapeReshape!dense_182/Tensordot/transpose:y:0"dense_182/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¨
dense_182/Tensordot/MatMulMatMul$dense_182/Tensordot/Reshape:output:0*dense_182/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
dense_182/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: c
!dense_182/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ï
dense_182/Tensordot/concat_1ConcatV2%dense_182/Tensordot/GatherV2:output:0$dense_182/Tensordot/Const_2:output:0*dense_182/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¡
dense_182/TensordotReshape$dense_182/Tensordot/MatMul:product:0%dense_182/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 dense_182/BiasAdd/ReadVariableOpReadVariableOp)dense_182_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_182/BiasAddBiasAdddense_182/Tensordot:output:0(dense_182/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. h
dense_182/ReluReludense_182/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
"dense_183/Tensordot/ReadVariableOpReadVariableOp+dense_183_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0b
dense_183/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense_183/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
dense_183/Tensordot/ShapeShapedense_182/Relu:activations:0*
T0*
_output_shapes
:c
!dense_183/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_183/Tensordot/GatherV2GatherV2"dense_183/Tensordot/Shape:output:0!dense_183/Tensordot/free:output:0*dense_183/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
#dense_183/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
dense_183/Tensordot/GatherV2_1GatherV2"dense_183/Tensordot/Shape:output:0!dense_183/Tensordot/axes:output:0,dense_183/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
dense_183/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_183/Tensordot/ProdProd%dense_183/Tensordot/GatherV2:output:0"dense_183/Tensordot/Const:output:0*
T0*
_output_shapes
: e
dense_183/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_183/Tensordot/Prod_1Prod'dense_183/Tensordot/GatherV2_1:output:0$dense_183/Tensordot/Const_1:output:0*
T0*
_output_shapes
: a
dense_183/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ä
dense_183/Tensordot/concatConcatV2!dense_183/Tensordot/free:output:0!dense_183/Tensordot/axes:output:0(dense_183/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_183/Tensordot/stackPack!dense_183/Tensordot/Prod:output:0#dense_183/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
dense_183/Tensordot/transpose	Transposedense_182/Relu:activations:0#dense_183/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¨
dense_183/Tensordot/ReshapeReshape!dense_183/Tensordot/transpose:y:0"dense_183/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¨
dense_183/Tensordot/MatMulMatMul$dense_183/Tensordot/Reshape:output:0*dense_183/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
dense_183/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2c
!dense_183/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ï
dense_183/Tensordot/concat_1ConcatV2%dense_183/Tensordot/GatherV2:output:0$dense_183/Tensordot/Const_2:output:0*dense_183/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¡
dense_183/TensordotReshape$dense_183/Tensordot/MatMul:product:0%dense_183/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 dense_183/BiasAdd/ReadVariableOpReadVariableOp)dense_183_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_183/BiasAddBiasAdddense_183/Tensordot:output:0(dense_183/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2m
IdentityIdentitydense_183/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ö
NoOpNoOp!^dense_182/BiasAdd/ReadVariableOp#^dense_182/Tensordot/ReadVariableOp!^dense_183/BiasAdd/ReadVariableOp#^dense_183/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2D
 dense_182/BiasAdd/ReadVariableOp dense_182/BiasAdd/ReadVariableOp2H
"dense_182/Tensordot/ReadVariableOp"dense_182/Tensordot/ReadVariableOp2D
 dense_183/BiasAdd/ReadVariableOp dense_183/BiasAdd/ReadVariableOp2H
"dense_183/Tensordot/ReadVariableOp"dense_183/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Á

H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2650438

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
Ò
½
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650112

inputs#
dense_182_2650070:2 
dense_182_2650072: #
dense_183_2650106: 2
dense_183_2650108:2
identity¢!dense_182/StatefulPartitionedCall¢!dense_183/StatefulPartitionedCallû
!dense_182/StatefulPartitionedCallStatefulPartitionedCallinputsdense_182_2650070dense_182_2650072*
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
GPU 2J 8 *O
fJRH
F__inference_dense_182_layer_call_and_return_conditional_losses_2650069
!dense_183/StatefulPartitionedCallStatefulPartitionedCall*dense_182/StatefulPartitionedCall:output:0dense_183_2650106dense_183_2650108*
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
GPU 2J 8 *O
fJRH
F__inference_dense_183_layer_call_and_return_conditional_losses_2650105}
IdentityIdentity*dense_183/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp"^dense_182/StatefulPartitionedCall"^dense_183/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2F
!dense_182/StatefulPartitionedCall!dense_182/StatefulPartitionedCall2F
!dense_183/StatefulPartitionedCall!dense_183/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
º
È
while_cond_2653172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2653172___redundant_placeholder05
1while_while_cond_2653172___redundant_placeholder15
1while_while_cond_2653172___redundant_placeholder25
1while_while_cond_2653172___redundant_placeholder3
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
ð
®
A__inference_token_and_position_embedding_59_layer_call_fn_2652560
x
unknown:.2
	unknown_0:	2
identity¢StatefulPartitionedCallð
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
GPU 2J 8 *e
f`R^
\__inference_token_and_position_embedding_59_layer_call_and_return_conditional_losses_2650607s
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
Ä¿
â
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2652785

inputsY
Cmulti_head_attention_58_query_einsum_einsum_readvariableop_resource:22K
9multi_head_attention_58_query_add_readvariableop_resource:2W
Amulti_head_attention_58_key_einsum_einsum_readvariableop_resource:22I
7multi_head_attention_58_key_add_readvariableop_resource:2Y
Cmulti_head_attention_58_value_einsum_einsum_readvariableop_resource:22K
9multi_head_attention_58_value_add_readvariableop_resource:2d
Nmulti_head_attention_58_attention_output_einsum_einsum_readvariableop_resource:22R
Dmulti_head_attention_58_attention_output_add_readvariableop_resource:2K
=layer_normalization_116_batchnorm_mul_readvariableop_resource:2G
9layer_normalization_116_batchnorm_readvariableop_resource:2K
9sequential_58_dense_182_tensordot_readvariableop_resource:2 E
7sequential_58_dense_182_biasadd_readvariableop_resource: K
9sequential_58_dense_183_tensordot_readvariableop_resource: 2E
7sequential_58_dense_183_biasadd_readvariableop_resource:2K
=layer_normalization_117_batchnorm_mul_readvariableop_resource:2G
9layer_normalization_117_batchnorm_readvariableop_resource:2
identity¢0layer_normalization_116/batchnorm/ReadVariableOp¢4layer_normalization_116/batchnorm/mul/ReadVariableOp¢0layer_normalization_117/batchnorm/ReadVariableOp¢4layer_normalization_117/batchnorm/mul/ReadVariableOp¢;multi_head_attention_58/attention_output/add/ReadVariableOp¢Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp¢.multi_head_attention_58/key/add/ReadVariableOp¢8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp¢0multi_head_attention_58/query/add/ReadVariableOp¢:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp¢0multi_head_attention_58/value/add/ReadVariableOp¢:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp¢.sequential_58/dense_182/BiasAdd/ReadVariableOp¢0sequential_58/dense_182/Tensordot/ReadVariableOp¢.sequential_58/dense_183/BiasAdd/ReadVariableOp¢0sequential_58/dense_183/Tensordot/ReadVariableOpÂ
:multi_head_attention_58/query/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_58_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0á
+multi_head_attention_58/query/einsum/EinsumEinsuminputsBmulti_head_attention_58/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeª
0multi_head_attention_58/query/add/ReadVariableOpReadVariableOp9multi_head_attention_58_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ô
!multi_head_attention_58/query/addAddV24multi_head_attention_58/query/einsum/Einsum:output:08multi_head_attention_58/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
8multi_head_attention_58/key/einsum/Einsum/ReadVariableOpReadVariableOpAmulti_head_attention_58_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ý
)multi_head_attention_58/key/einsum/EinsumEinsuminputs@multi_head_attention_58/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¦
.multi_head_attention_58/key/add/ReadVariableOpReadVariableOp7multi_head_attention_58_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Î
multi_head_attention_58/key/addAddV22multi_head_attention_58/key/einsum/Einsum:output:06multi_head_attention_58/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Â
:multi_head_attention_58/value/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_58_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0á
+multi_head_attention_58/value/einsum/EinsumEinsuminputsBmulti_head_attention_58/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeª
0multi_head_attention_58/value/add/ReadVariableOpReadVariableOp9multi_head_attention_58_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ô
!multi_head_attention_58/value/addAddV24multi_head_attention_58/value/einsum/Einsum:output:08multi_head_attention_58/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2b
multi_head_attention_58/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>«
multi_head_attention_58/MulMul%multi_head_attention_58/query/add:z:0&multi_head_attention_58/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2×
%multi_head_attention_58/einsum/EinsumEinsum#multi_head_attention_58/key/add:z:0multi_head_attention_58/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
'multi_head_attention_58/softmax/SoftmaxSoftmax.multi_head_attention_58/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..¡
(multi_head_attention_58/dropout/IdentityIdentity1multi_head_attention_58/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..í
'multi_head_attention_58/einsum_1/EinsumEinsum1multi_head_attention_58/dropout/Identity:output:0%multi_head_attention_58/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdØ
Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpNmulti_head_attention_58_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
6multi_head_attention_58/attention_output/einsum/EinsumEinsum0multi_head_attention_58/einsum_1/Einsum:output:0Mmulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abe¼
;multi_head_attention_58/attention_output/add/ReadVariableOpReadVariableOpDmulti_head_attention_58_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0ñ
,multi_head_attention_58/attention_output/addAddV2?multi_head_attention_58/attention_output/einsum/Einsum:output:0Cmulti_head_attention_58/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_116/IdentityIdentity0multi_head_attention_58/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2i
addAddV2inputsdropout_116/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization_116/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:½
$layer_normalization_116/moments/meanMeanadd:z:0?layer_normalization_116/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(¡
,layer_normalization_116/moments/StopGradientStopGradient-layer_normalization_116/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¼
1layer_normalization_116/moments/SquaredDifferenceSquaredDifferenceadd:z:05layer_normalization_116/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:layer_normalization_116/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_116/moments/varianceMean5layer_normalization_116/moments/SquaredDifference:z:0Clayer_normalization_116/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(l
'layer_normalization_116/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_116/batchnorm/addAddV21layer_normalization_116/moments/variance:output:00layer_normalization_116/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'layer_normalization_116/batchnorm/RsqrtRsqrt)layer_normalization_116/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
4layer_normalization_116/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_116_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Í
%layer_normalization_116/batchnorm/mulMul+layer_normalization_116/batchnorm/Rsqrt:y:0<layer_normalization_116/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'layer_normalization_116/batchnorm/mul_1Muladd:z:0)layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_116/batchnorm/mul_2Mul-layer_normalization_116/moments/mean:output:0)layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¦
0layer_normalization_116/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_116_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0É
%layer_normalization_116/batchnorm/subSub8layer_normalization_116/batchnorm/ReadVariableOp:value:0+layer_normalization_116/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_116/batchnorm/add_1AddV2+layer_normalization_116/batchnorm/mul_1:z:0)layer_normalization_116/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ª
0sequential_58/dense_182/Tensordot/ReadVariableOpReadVariableOp9sequential_58_dense_182_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0p
&sequential_58/dense_182/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:w
&sequential_58/dense_182/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
'sequential_58/dense_182/Tensordot/ShapeShape+layer_normalization_116/batchnorm/add_1:z:0*
T0*
_output_shapes
:q
/sequential_58/dense_182/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_182/Tensordot/GatherV2GatherV20sequential_58/dense_182/Tensordot/Shape:output:0/sequential_58/dense_182/Tensordot/free:output:08sequential_58/dense_182/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
1sequential_58/dense_182/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,sequential_58/dense_182/Tensordot/GatherV2_1GatherV20sequential_58/dense_182/Tensordot/Shape:output:0/sequential_58/dense_182/Tensordot/axes:output:0:sequential_58/dense_182/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
'sequential_58/dense_182/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_58/dense_182/Tensordot/ProdProd3sequential_58/dense_182/Tensordot/GatherV2:output:00sequential_58/dense_182/Tensordot/Const:output:0*
T0*
_output_shapes
: s
)sequential_58/dense_182/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¼
(sequential_58/dense_182/Tensordot/Prod_1Prod5sequential_58/dense_182/Tensordot/GatherV2_1:output:02sequential_58/dense_182/Tensordot/Const_1:output:0*
T0*
_output_shapes
: o
-sequential_58/dense_182/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
(sequential_58/dense_182/Tensordot/concatConcatV2/sequential_58/dense_182/Tensordot/free:output:0/sequential_58/dense_182/Tensordot/axes:output:06sequential_58/dense_182/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
'sequential_58/dense_182/Tensordot/stackPack/sequential_58/dense_182/Tensordot/Prod:output:01sequential_58/dense_182/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Î
+sequential_58/dense_182/Tensordot/transpose	Transpose+layer_normalization_116/batchnorm/add_1:z:01sequential_58/dense_182/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ò
)sequential_58/dense_182/Tensordot/ReshapeReshape/sequential_58/dense_182/Tensordot/transpose:y:00sequential_58/dense_182/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
(sequential_58/dense_182/Tensordot/MatMulMatMul2sequential_58/dense_182/Tensordot/Reshape:output:08sequential_58/dense_182/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
)sequential_58/dense_182/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: q
/sequential_58/dense_182/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_182/Tensordot/concat_1ConcatV23sequential_58/dense_182/Tensordot/GatherV2:output:02sequential_58/dense_182/Tensordot/Const_2:output:08sequential_58/dense_182/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ë
!sequential_58/dense_182/TensordotReshape2sequential_58/dense_182/Tensordot/MatMul:product:03sequential_58/dense_182/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¢
.sequential_58/dense_182/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_182_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ä
sequential_58/dense_182/BiasAddBiasAdd*sequential_58/dense_182/Tensordot:output:06sequential_58/dense_182/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
sequential_58/dense_182/ReluRelu(sequential_58/dense_182/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ª
0sequential_58/dense_183/Tensordot/ReadVariableOpReadVariableOp9sequential_58_dense_183_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0p
&sequential_58/dense_183/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:w
&sequential_58/dense_183/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
'sequential_58/dense_183/Tensordot/ShapeShape*sequential_58/dense_182/Relu:activations:0*
T0*
_output_shapes
:q
/sequential_58/dense_183/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_183/Tensordot/GatherV2GatherV20sequential_58/dense_183/Tensordot/Shape:output:0/sequential_58/dense_183/Tensordot/free:output:08sequential_58/dense_183/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
1sequential_58/dense_183/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,sequential_58/dense_183/Tensordot/GatherV2_1GatherV20sequential_58/dense_183/Tensordot/Shape:output:0/sequential_58/dense_183/Tensordot/axes:output:0:sequential_58/dense_183/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
'sequential_58/dense_183/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_58/dense_183/Tensordot/ProdProd3sequential_58/dense_183/Tensordot/GatherV2:output:00sequential_58/dense_183/Tensordot/Const:output:0*
T0*
_output_shapes
: s
)sequential_58/dense_183/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¼
(sequential_58/dense_183/Tensordot/Prod_1Prod5sequential_58/dense_183/Tensordot/GatherV2_1:output:02sequential_58/dense_183/Tensordot/Const_1:output:0*
T0*
_output_shapes
: o
-sequential_58/dense_183/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
(sequential_58/dense_183/Tensordot/concatConcatV2/sequential_58/dense_183/Tensordot/free:output:0/sequential_58/dense_183/Tensordot/axes:output:06sequential_58/dense_183/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
'sequential_58/dense_183/Tensordot/stackPack/sequential_58/dense_183/Tensordot/Prod:output:01sequential_58/dense_183/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Í
+sequential_58/dense_183/Tensordot/transpose	Transpose*sequential_58/dense_182/Relu:activations:01sequential_58/dense_183/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ò
)sequential_58/dense_183/Tensordot/ReshapeReshape/sequential_58/dense_183/Tensordot/transpose:y:00sequential_58/dense_183/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
(sequential_58/dense_183/Tensordot/MatMulMatMul2sequential_58/dense_183/Tensordot/Reshape:output:08sequential_58/dense_183/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
)sequential_58/dense_183/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2q
/sequential_58/dense_183/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_183/Tensordot/concat_1ConcatV23sequential_58/dense_183/Tensordot/GatherV2:output:02sequential_58/dense_183/Tensordot/Const_2:output:08sequential_58/dense_183/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ë
!sequential_58/dense_183/TensordotReshape2sequential_58/dense_183/Tensordot/MatMul:product:03sequential_58/dense_183/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.sequential_58/dense_183/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_183_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ä
sequential_58/dense_183/BiasAddBiasAdd*sequential_58/dense_183/Tensordot:output:06sequential_58/dense_183/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_117/IdentityIdentity(sequential_58/dense_183/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2+layer_normalization_116/batchnorm/add_1:z:0dropout_117/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization_117/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¿
$layer_normalization_117/moments/meanMean	add_1:z:0?layer_normalization_117/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(¡
,layer_normalization_117/moments/StopGradientStopGradient-layer_normalization_117/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¾
1layer_normalization_117/moments/SquaredDifferenceSquaredDifference	add_1:z:05layer_normalization_117/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:layer_normalization_117/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_117/moments/varianceMean5layer_normalization_117/moments/SquaredDifference:z:0Clayer_normalization_117/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(l
'layer_normalization_117/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_117/batchnorm/addAddV21layer_normalization_117/moments/variance:output:00layer_normalization_117/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'layer_normalization_117/batchnorm/RsqrtRsqrt)layer_normalization_117/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
4layer_normalization_117/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_117_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Í
%layer_normalization_117/batchnorm/mulMul+layer_normalization_117/batchnorm/Rsqrt:y:0<layer_normalization_117/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'layer_normalization_117/batchnorm/mul_1Mul	add_1:z:0)layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_117/batchnorm/mul_2Mul-layer_normalization_117/moments/mean:output:0)layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¦
0layer_normalization_117/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_117_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0É
%layer_normalization_117/batchnorm/subSub8layer_normalization_117/batchnorm/ReadVariableOp:value:0+layer_normalization_117/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_117/batchnorm/add_1AddV2+layer_normalization_117/batchnorm/mul_1:z:0)layer_normalization_117/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
IdentityIdentity+layer_normalization_117/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2´
NoOpNoOp1^layer_normalization_116/batchnorm/ReadVariableOp5^layer_normalization_116/batchnorm/mul/ReadVariableOp1^layer_normalization_117/batchnorm/ReadVariableOp5^layer_normalization_117/batchnorm/mul/ReadVariableOp<^multi_head_attention_58/attention_output/add/ReadVariableOpF^multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp/^multi_head_attention_58/key/add/ReadVariableOp9^multi_head_attention_58/key/einsum/Einsum/ReadVariableOp1^multi_head_attention_58/query/add/ReadVariableOp;^multi_head_attention_58/query/einsum/Einsum/ReadVariableOp1^multi_head_attention_58/value/add/ReadVariableOp;^multi_head_attention_58/value/einsum/Einsum/ReadVariableOp/^sequential_58/dense_182/BiasAdd/ReadVariableOp1^sequential_58/dense_182/Tensordot/ReadVariableOp/^sequential_58/dense_183/BiasAdd/ReadVariableOp1^sequential_58/dense_183/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2d
0layer_normalization_116/batchnorm/ReadVariableOp0layer_normalization_116/batchnorm/ReadVariableOp2l
4layer_normalization_116/batchnorm/mul/ReadVariableOp4layer_normalization_116/batchnorm/mul/ReadVariableOp2d
0layer_normalization_117/batchnorm/ReadVariableOp0layer_normalization_117/batchnorm/ReadVariableOp2l
4layer_normalization_117/batchnorm/mul/ReadVariableOp4layer_normalization_117/batchnorm/mul/ReadVariableOp2z
;multi_head_attention_58/attention_output/add/ReadVariableOp;multi_head_attention_58/attention_output/add/ReadVariableOp2
Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpEmulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp2`
.multi_head_attention_58/key/add/ReadVariableOp.multi_head_attention_58/key/add/ReadVariableOp2t
8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_58/query/add/ReadVariableOp0multi_head_attention_58/query/add/ReadVariableOp2x
:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_58/value/add/ReadVariableOp0multi_head_attention_58/value/add/ReadVariableOp2x
:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp2`
.sequential_58/dense_182/BiasAdd/ReadVariableOp.sequential_58/dense_182/BiasAdd/ReadVariableOp2d
0sequential_58/dense_182/Tensordot/ReadVariableOp0sequential_58/dense_182/Tensordot/ReadVariableOp2`
.sequential_58/dense_183/BiasAdd/ReadVariableOp.sequential_58/dense_183/BiasAdd/ReadVariableOp2d
0sequential_58/dense_183/Tensordot/ReadVariableOp0sequential_58/dense_183/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Í
ý
F__inference_dense_183_layer_call_and_return_conditional_losses_2653901

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
º
È
while_cond_2653460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2653460___redundant_placeholder05
1while_while_cond_2653460___redundant_placeholder15
1while_while_cond_2653460___redundant_placeholder25
1while_while_cond_2653460___redundant_placeholder3
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
²
Ò
/__inference_sequential_58_layer_call_fn_2653597

inputs
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCallý
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
GPU 2J 8 *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650112s
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
æ(
°
E__inference_model_55_layer_call_and_return_conditional_losses_2650959

inputs9
'token_and_position_embedding_59_2650608:.2:
'token_and_position_embedding_59_2650610:	24
transformer_encoder_58_2650741:220
transformer_encoder_58_2650743:24
transformer_encoder_58_2650745:220
transformer_encoder_58_2650747:24
transformer_encoder_58_2650749:220
transformer_encoder_58_2650751:24
transformer_encoder_58_2650753:22,
transformer_encoder_58_2650755:2,
transformer_encoder_58_2650757:2,
transformer_encoder_58_2650759:20
transformer_encoder_58_2650761:2 ,
transformer_encoder_58_2650763: 0
transformer_encoder_58_2650765: 2,
transformer_encoder_58_2650767:2,
transformer_encoder_58_2650769:2,
transformer_encoder_58_2650771:2 
rnn_6_2650918:	2¸ 
rnn_6_2650920:	.¸
rnn_6_2650922:	¸#
dense_186_2650937:..
dense_186_2650939:.#
dense_187_2650953:.
dense_187_2650955:
identity¢!dense_186/StatefulPartitionedCall¢!dense_187/StatefulPartitionedCall¢rnn_6/StatefulPartitionedCall¢7token_and_position_embedding_59/StatefulPartitionedCall¢.transformer_encoder_58/StatefulPartitionedCallÓ
7token_and_position_embedding_59/StatefulPartitionedCallStatefulPartitionedCallinputs'token_and_position_embedding_59_2650608'token_and_position_embedding_59_2650610*
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
GPU 2J 8 *e
f`R^
\__inference_token_and_position_embedding_59_layer_call_and_return_conditional_losses_2650607Å
.transformer_encoder_58/StatefulPartitionedCallStatefulPartitionedCall@token_and_position_embedding_59/StatefulPartitionedCall:output:0transformer_encoder_58_2650741transformer_encoder_58_2650743transformer_encoder_58_2650745transformer_encoder_58_2650747transformer_encoder_58_2650749transformer_encoder_58_2650751transformer_encoder_58_2650753transformer_encoder_58_2650755transformer_encoder_58_2650757transformer_encoder_58_2650759transformer_encoder_58_2650761transformer_encoder_58_2650763transformer_encoder_58_2650765transformer_encoder_58_2650767transformer_encoder_58_2650769transformer_encoder_58_2650771*
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
GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2650740©
rnn_6/StatefulPartitionedCallStatefulPartitionedCall7transformer_encoder_58/StatefulPartitionedCall:output:0rnn_6_2650918rnn_6_2650920rnn_6_2650922*
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
GPU 2J 8 *K
fFRD
B__inference_rnn_6_layer_call_and_return_conditional_losses_2650917
!dense_186/StatefulPartitionedCallStatefulPartitionedCall&rnn_6/StatefulPartitionedCall:output:0dense_186_2650937dense_186_2650939*
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
GPU 2J 8 *O
fJRH
F__inference_dense_186_layer_call_and_return_conditional_losses_2650936
!dense_187/StatefulPartitionedCallStatefulPartitionedCall*dense_186/StatefulPartitionedCall:output:0dense_187_2650953dense_187_2650955*
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
GPU 2J 8 *O
fJRH
F__inference_dense_187_layer_call_and_return_conditional_losses_2650952y
IdentityIdentity*dense_187/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp"^dense_186/StatefulPartitionedCall"^dense_187/StatefulPartitionedCall^rnn_6/StatefulPartitionedCall8^token_and_position_embedding_59/StatefulPartitionedCall/^transformer_encoder_58/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2F
!dense_186/StatefulPartitionedCall!dense_186/StatefulPartitionedCall2F
!dense_187/StatefulPartitionedCall!dense_187/StatefulPartitionedCall2>
rnn_6/StatefulPartitionedCallrnn_6/StatefulPartitionedCall2r
7token_and_position_embedding_59/StatefulPartitionedCall7token_and_position_embedding_59/StatefulPartitionedCall2`
.transformer_encoder_58/StatefulPartitionedCall.transformer_encoder_58/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
J

B__inference_rnn_6_layer_call_and_return_conditional_losses_2653257
inputs_0=
*lstm_cell_6_matmul_readvariableop_resource:	2¸?
,lstm_cell_6_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_6_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_6/BiasAdd/ReadVariableOp¢!lstm_cell_6/MatMul/ReadVariableOp¢#lstm_cell_6/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
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
bodyR
while_body_2653173*
condR
while_cond_2653172*K
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
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0

¶
'__inference_rnn_6_layer_call_fn_2652947
inputs_0
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallæ
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
GPU 2J 8 *K
fFRD
B__inference_rnn_6_layer_call_and_return_conditional_losses_2650567o
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
Ú@
é
J__inference_sequential_58_layer_call_and_return_conditional_losses_2653667

inputs=
+dense_182_tensordot_readvariableop_resource:2 7
)dense_182_biasadd_readvariableop_resource: =
+dense_183_tensordot_readvariableop_resource: 27
)dense_183_biasadd_readvariableop_resource:2
identity¢ dense_182/BiasAdd/ReadVariableOp¢"dense_182/Tensordot/ReadVariableOp¢ dense_183/BiasAdd/ReadVariableOp¢"dense_183/Tensordot/ReadVariableOp
"dense_182/Tensordot/ReadVariableOpReadVariableOp+dense_182_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0b
dense_182/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense_182/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       O
dense_182/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:c
!dense_182/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_182/Tensordot/GatherV2GatherV2"dense_182/Tensordot/Shape:output:0!dense_182/Tensordot/free:output:0*dense_182/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
#dense_182/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
dense_182/Tensordot/GatherV2_1GatherV2"dense_182/Tensordot/Shape:output:0!dense_182/Tensordot/axes:output:0,dense_182/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
dense_182/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_182/Tensordot/ProdProd%dense_182/Tensordot/GatherV2:output:0"dense_182/Tensordot/Const:output:0*
T0*
_output_shapes
: e
dense_182/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_182/Tensordot/Prod_1Prod'dense_182/Tensordot/GatherV2_1:output:0$dense_182/Tensordot/Const_1:output:0*
T0*
_output_shapes
: a
dense_182/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ä
dense_182/Tensordot/concatConcatV2!dense_182/Tensordot/free:output:0!dense_182/Tensordot/axes:output:0(dense_182/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_182/Tensordot/stackPack!dense_182/Tensordot/Prod:output:0#dense_182/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_182/Tensordot/transpose	Transposeinputs#dense_182/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¨
dense_182/Tensordot/ReshapeReshape!dense_182/Tensordot/transpose:y:0"dense_182/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¨
dense_182/Tensordot/MatMulMatMul$dense_182/Tensordot/Reshape:output:0*dense_182/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
dense_182/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: c
!dense_182/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ï
dense_182/Tensordot/concat_1ConcatV2%dense_182/Tensordot/GatherV2:output:0$dense_182/Tensordot/Const_2:output:0*dense_182/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¡
dense_182/TensordotReshape$dense_182/Tensordot/MatMul:product:0%dense_182/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 dense_182/BiasAdd/ReadVariableOpReadVariableOp)dense_182_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_182/BiasAddBiasAdddense_182/Tensordot:output:0(dense_182/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. h
dense_182/ReluReludense_182/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
"dense_183/Tensordot/ReadVariableOpReadVariableOp+dense_183_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0b
dense_183/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense_183/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
dense_183/Tensordot/ShapeShapedense_182/Relu:activations:0*
T0*
_output_shapes
:c
!dense_183/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_183/Tensordot/GatherV2GatherV2"dense_183/Tensordot/Shape:output:0!dense_183/Tensordot/free:output:0*dense_183/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
#dense_183/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
dense_183/Tensordot/GatherV2_1GatherV2"dense_183/Tensordot/Shape:output:0!dense_183/Tensordot/axes:output:0,dense_183/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
dense_183/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_183/Tensordot/ProdProd%dense_183/Tensordot/GatherV2:output:0"dense_183/Tensordot/Const:output:0*
T0*
_output_shapes
: e
dense_183/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_183/Tensordot/Prod_1Prod'dense_183/Tensordot/GatherV2_1:output:0$dense_183/Tensordot/Const_1:output:0*
T0*
_output_shapes
: a
dense_183/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ä
dense_183/Tensordot/concatConcatV2!dense_183/Tensordot/free:output:0!dense_183/Tensordot/axes:output:0(dense_183/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_183/Tensordot/stackPack!dense_183/Tensordot/Prod:output:0#dense_183/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
dense_183/Tensordot/transpose	Transposedense_182/Relu:activations:0#dense_183/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¨
dense_183/Tensordot/ReshapeReshape!dense_183/Tensordot/transpose:y:0"dense_183/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¨
dense_183/Tensordot/MatMulMatMul$dense_183/Tensordot/Reshape:output:0*dense_183/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2e
dense_183/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2c
!dense_183/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ï
dense_183/Tensordot/concat_1ConcatV2%dense_183/Tensordot/GatherV2:output:0$dense_183/Tensordot/Const_2:output:0*dense_183/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¡
dense_183/TensordotReshape$dense_183/Tensordot/MatMul:product:0%dense_183/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 dense_183/BiasAdd/ReadVariableOpReadVariableOp)dense_183_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_183/BiasAddBiasAdddense_183/Tensordot:output:0(dense_183/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2m
IdentityIdentitydense_183/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ö
NoOpNoOp!^dense_182/BiasAdd/ReadVariableOp#^dense_182/Tensordot/ReadVariableOp!^dense_183/BiasAdd/ReadVariableOp#^dense_183/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2D
 dense_182/BiasAdd/ReadVariableOp dense_182/BiasAdd/ReadVariableOp2H
"dense_182/Tensordot/ReadVariableOp"dense_182/Tensordot/ReadVariableOp2D
 dense_183/BiasAdd/ReadVariableOp dense_183/BiasAdd/ReadVariableOp2H
"dense_183/Tensordot/ReadVariableOp"dense_183/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ö

+__inference_dense_182_layer_call_fn_2653831

inputs
unknown:2 
	unknown_0: 
identity¢StatefulPartitionedCallß
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
GPU 2J 8 *O
fJRH
F__inference_dense_182_layer_call_and_return_conditional_losses_2650069s
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
á?


rnn_6_while_body_2652141(
$rnn_6_while_rnn_6_while_loop_counter.
*rnn_6_while_rnn_6_while_maximum_iterations
rnn_6_while_placeholder
rnn_6_while_placeholder_1
rnn_6_while_placeholder_2
rnn_6_while_placeholder_3'
#rnn_6_while_rnn_6_strided_slice_1_0c
_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0K
8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0:	2¸M
:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.¸H
9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0:	¸
rnn_6_while_identity
rnn_6_while_identity_1
rnn_6_while_identity_2
rnn_6_while_identity_3
rnn_6_while_identity_4
rnn_6_while_identity_5%
!rnn_6_while_rnn_6_strided_slice_1a
]rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensorI
6rnn_6_while_lstm_cell_6_matmul_readvariableop_resource:	2¸K
8rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource:	.¸F
7rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource:	¸¢.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp¢-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp¢/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp
=rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ä
/rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0rnn_6_while_placeholderFrnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0§
-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0Ê
rnn_6/while/lstm_cell_6/MatMulMatMul6rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:05rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸«
/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0±
 rnn_6/while/lstm_cell_6/MatMul_1MatMulrnn_6_while_placeholder_27rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
rnn_6/while/lstm_cell_6/addAddV2(rnn_6/while/lstm_cell_6/MatMul:product:0*rnn_6/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¥
.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¶
rnn_6/while/lstm_cell_6/BiasAddBiasAddrnn_6/while/lstm_cell_6/add:z:06rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸i
'rnn_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :þ
rnn_6/while/lstm_cell_6/splitSplit0rnn_6/while/lstm_cell_6/split/split_dim:output:0(rnn_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
rnn_6/while/lstm_cell_6/SigmoidSigmoid&rnn_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_6/while/lstm_cell_6/Sigmoid_1Sigmoid&rnn_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/while/lstm_cell_6/mulMul%rnn_6/while/lstm_cell_6/Sigmoid_1:y:0rnn_6_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn_6/while/lstm_cell_6/TanhTanh&rnn_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/while/lstm_cell_6/mul_1Mul#rnn_6/while/lstm_cell_6/Sigmoid:y:0 rnn_6/while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/while/lstm_cell_6/add_1AddV2rnn_6/while/lstm_cell_6/mul:z:0!rnn_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_6/while/lstm_cell_6/Sigmoid_2Sigmoid&rnn_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.{
rnn_6/while/lstm_cell_6/Tanh_1Tanh!rnn_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¡
rnn_6/while/lstm_cell_6/mul_2Mul%rnn_6/while/lstm_cell_6/Sigmoid_2:y:0"rnn_6/while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
6rnn_6/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_6_while_placeholder_1?rnn_6/while/TensorArrayV2Write/TensorListSetItem/index:output:0!rnn_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒS
rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_6/while/addAddV2rnn_6_while_placeholderrnn_6/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_6/while/add_1AddV2$rnn_6_while_rnn_6_while_loop_counterrnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_6/while/IdentityIdentityrnn_6/while/add_1:z:0^rnn_6/while/NoOp*
T0*
_output_shapes
: 
rnn_6/while/Identity_1Identity*rnn_6_while_rnn_6_while_maximum_iterations^rnn_6/while/NoOp*
T0*
_output_shapes
: k
rnn_6/while/Identity_2Identityrnn_6/while/add:z:0^rnn_6/while/NoOp*
T0*
_output_shapes
: 
rnn_6/while/Identity_3Identity@rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_6/while/NoOp*
T0*
_output_shapes
: 
rnn_6/while/Identity_4Identity!rnn_6/while/lstm_cell_6/mul_2:z:0^rnn_6/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/while/Identity_5Identity!rnn_6/while/lstm_cell_6/add_1:z:0^rnn_6/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.å
rnn_6/while/NoOpNoOp/^rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp.^rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp0^rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_6_while_identityrnn_6/while/Identity:output:0"9
rnn_6_while_identity_1rnn_6/while/Identity_1:output:0"9
rnn_6_while_identity_2rnn_6/while/Identity_2:output:0"9
rnn_6_while_identity_3rnn_6/while/Identity_3:output:0"9
rnn_6_while_identity_4rnn_6/while/Identity_4:output:0"9
rnn_6_while_identity_5rnn_6/while/Identity_5:output:0"t
7rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"v
8rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"r
6rnn_6_while_lstm_cell_6_matmul_readvariableop_resource8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0"H
!rnn_6_while_rnn_6_strided_slice_1#rnn_6_while_rnn_6_strided_slice_1_0"À
]rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2`
.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2^
-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp2b
/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
û#
ã
while_body_2650306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_6_2650330_0:	2¸.
while_lstm_cell_6_2650332_0:	.¸*
while_lstm_cell_6_2650334_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_6_2650330:	2¸,
while_lstm_cell_6_2650332:	.¸(
while_lstm_cell_6_2650334:	¸¢)while/lstm_cell_6/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0²
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_2650330_0while_lstm_cell_6_2650332_0while_lstm_cell_6_2650334_0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2650291r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_6/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_6_2650330while_lstm_cell_6_2650330_0"8
while_lstm_cell_6_2650332while_lstm_cell_6_2650332_0"8
while_lstm_cell_6_2650334while_lstm_cell_6_2650334_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 
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
â	
À
rnn_6_while_cond_2652453(
$rnn_6_while_rnn_6_while_loop_counter.
*rnn_6_while_rnn_6_while_maximum_iterations
rnn_6_while_placeholder
rnn_6_while_placeholder_1
rnn_6_while_placeholder_2
rnn_6_while_placeholder_3*
&rnn_6_while_less_rnn_6_strided_slice_1A
=rnn_6_while_rnn_6_while_cond_2652453___redundant_placeholder0A
=rnn_6_while_rnn_6_while_cond_2652453___redundant_placeholder1A
=rnn_6_while_rnn_6_while_cond_2652453___redundant_placeholder2A
=rnn_6_while_rnn_6_while_cond_2652453___redundant_placeholder3
rnn_6_while_identity
z
rnn_6/while/LessLessrnn_6_while_placeholder&rnn_6_while_less_rnn_6_strided_slice_1*
T0*
_output_shapes
: W
rnn_6/while/IdentityIdentityrnn_6/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_6_while_identityrnn_6/while/Identity:output:0*(
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
8

B__inference_rnn_6_layer_call_and_return_conditional_losses_2650375

inputs&
lstm_cell_6_2650292:	2¸&
lstm_cell_6_2650294:	.¸"
lstm_cell_6_2650296:	¸
identity¢#lstm_cell_6/StatefulPartitionedCall¢while;
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
shrink_axis_maskô
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_2650292lstm_cell_6_2650294lstm_cell_6_2650296*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2650291n
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
value	B : ¹
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_2650292lstm_cell_6_2650294lstm_cell_6_2650296*
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
bodyR
while_body_2650306*
condR
while_cond_2650305*K
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
:ÿÿÿÿÿÿÿÿÿ.t
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
 Î
â
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2652925

inputsY
Cmulti_head_attention_58_query_einsum_einsum_readvariableop_resource:22K
9multi_head_attention_58_query_add_readvariableop_resource:2W
Amulti_head_attention_58_key_einsum_einsum_readvariableop_resource:22I
7multi_head_attention_58_key_add_readvariableop_resource:2Y
Cmulti_head_attention_58_value_einsum_einsum_readvariableop_resource:22K
9multi_head_attention_58_value_add_readvariableop_resource:2d
Nmulti_head_attention_58_attention_output_einsum_einsum_readvariableop_resource:22R
Dmulti_head_attention_58_attention_output_add_readvariableop_resource:2K
=layer_normalization_116_batchnorm_mul_readvariableop_resource:2G
9layer_normalization_116_batchnorm_readvariableop_resource:2K
9sequential_58_dense_182_tensordot_readvariableop_resource:2 E
7sequential_58_dense_182_biasadd_readvariableop_resource: K
9sequential_58_dense_183_tensordot_readvariableop_resource: 2E
7sequential_58_dense_183_biasadd_readvariableop_resource:2K
=layer_normalization_117_batchnorm_mul_readvariableop_resource:2G
9layer_normalization_117_batchnorm_readvariableop_resource:2
identity¢0layer_normalization_116/batchnorm/ReadVariableOp¢4layer_normalization_116/batchnorm/mul/ReadVariableOp¢0layer_normalization_117/batchnorm/ReadVariableOp¢4layer_normalization_117/batchnorm/mul/ReadVariableOp¢;multi_head_attention_58/attention_output/add/ReadVariableOp¢Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp¢.multi_head_attention_58/key/add/ReadVariableOp¢8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp¢0multi_head_attention_58/query/add/ReadVariableOp¢:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp¢0multi_head_attention_58/value/add/ReadVariableOp¢:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp¢.sequential_58/dense_182/BiasAdd/ReadVariableOp¢0sequential_58/dense_182/Tensordot/ReadVariableOp¢.sequential_58/dense_183/BiasAdd/ReadVariableOp¢0sequential_58/dense_183/Tensordot/ReadVariableOpÂ
:multi_head_attention_58/query/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_58_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0á
+multi_head_attention_58/query/einsum/EinsumEinsuminputsBmulti_head_attention_58/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeª
0multi_head_attention_58/query/add/ReadVariableOpReadVariableOp9multi_head_attention_58_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ô
!multi_head_attention_58/query/addAddV24multi_head_attention_58/query/einsum/Einsum:output:08multi_head_attention_58/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
8multi_head_attention_58/key/einsum/Einsum/ReadVariableOpReadVariableOpAmulti_head_attention_58_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ý
)multi_head_attention_58/key/einsum/EinsumEinsuminputs@multi_head_attention_58/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¦
.multi_head_attention_58/key/add/ReadVariableOpReadVariableOp7multi_head_attention_58_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Î
multi_head_attention_58/key/addAddV22multi_head_attention_58/key/einsum/Einsum:output:06multi_head_attention_58/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Â
:multi_head_attention_58/value/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_58_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0á
+multi_head_attention_58/value/einsum/EinsumEinsuminputsBmulti_head_attention_58/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeª
0multi_head_attention_58/value/add/ReadVariableOpReadVariableOp9multi_head_attention_58_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ô
!multi_head_attention_58/value/addAddV24multi_head_attention_58/value/einsum/Einsum:output:08multi_head_attention_58/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2b
multi_head_attention_58/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>«
multi_head_attention_58/MulMul%multi_head_attention_58/query/add:z:0&multi_head_attention_58/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2×
%multi_head_attention_58/einsum/EinsumEinsum#multi_head_attention_58/key/add:z:0multi_head_attention_58/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
'multi_head_attention_58/softmax/SoftmaxSoftmax.multi_head_attention_58/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..í
'multi_head_attention_58/einsum_1/EinsumEinsum1multi_head_attention_58/softmax/Softmax:softmax:0%multi_head_attention_58/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdØ
Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpNmulti_head_attention_58_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
6multi_head_attention_58/attention_output/einsum/EinsumEinsum0multi_head_attention_58/einsum_1/Einsum:output:0Mmulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abe¼
;multi_head_attention_58/attention_output/add/ReadVariableOpReadVariableOpDmulti_head_attention_58_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0ñ
,multi_head_attention_58/attention_output/addAddV2?multi_head_attention_58/attention_output/einsum/Einsum:output:0Cmulti_head_attention_58/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2^
dropout_116/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ª
dropout_116/dropout/MulMul0multi_head_attention_58/attention_output/add:z:0"dropout_116/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2y
dropout_116/dropout/ShapeShape0multi_head_attention_58/attention_output/add:z:0*
T0*
_output_shapes
:¨
0dropout_116/dropout/random_uniform/RandomUniformRandomUniform"dropout_116/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0g
"dropout_116/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Î
 dropout_116/dropout/GreaterEqualGreaterEqual9dropout_116/dropout/random_uniform/RandomUniform:output:0+dropout_116/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_116/dropout/CastCast$dropout_116/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_116/dropout/Mul_1Muldropout_116/dropout/Mul:z:0dropout_116/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2i
addAddV2inputsdropout_116/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization_116/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:½
$layer_normalization_116/moments/meanMeanadd:z:0?layer_normalization_116/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(¡
,layer_normalization_116/moments/StopGradientStopGradient-layer_normalization_116/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¼
1layer_normalization_116/moments/SquaredDifferenceSquaredDifferenceadd:z:05layer_normalization_116/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:layer_normalization_116/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_116/moments/varianceMean5layer_normalization_116/moments/SquaredDifference:z:0Clayer_normalization_116/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(l
'layer_normalization_116/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_116/batchnorm/addAddV21layer_normalization_116/moments/variance:output:00layer_normalization_116/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'layer_normalization_116/batchnorm/RsqrtRsqrt)layer_normalization_116/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
4layer_normalization_116/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_116_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Í
%layer_normalization_116/batchnorm/mulMul+layer_normalization_116/batchnorm/Rsqrt:y:0<layer_normalization_116/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'layer_normalization_116/batchnorm/mul_1Muladd:z:0)layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_116/batchnorm/mul_2Mul-layer_normalization_116/moments/mean:output:0)layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¦
0layer_normalization_116/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_116_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0É
%layer_normalization_116/batchnorm/subSub8layer_normalization_116/batchnorm/ReadVariableOp:value:0+layer_normalization_116/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_116/batchnorm/add_1AddV2+layer_normalization_116/batchnorm/mul_1:z:0)layer_normalization_116/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ª
0sequential_58/dense_182/Tensordot/ReadVariableOpReadVariableOp9sequential_58_dense_182_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0p
&sequential_58/dense_182/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:w
&sequential_58/dense_182/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
'sequential_58/dense_182/Tensordot/ShapeShape+layer_normalization_116/batchnorm/add_1:z:0*
T0*
_output_shapes
:q
/sequential_58/dense_182/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_182/Tensordot/GatherV2GatherV20sequential_58/dense_182/Tensordot/Shape:output:0/sequential_58/dense_182/Tensordot/free:output:08sequential_58/dense_182/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
1sequential_58/dense_182/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,sequential_58/dense_182/Tensordot/GatherV2_1GatherV20sequential_58/dense_182/Tensordot/Shape:output:0/sequential_58/dense_182/Tensordot/axes:output:0:sequential_58/dense_182/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
'sequential_58/dense_182/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_58/dense_182/Tensordot/ProdProd3sequential_58/dense_182/Tensordot/GatherV2:output:00sequential_58/dense_182/Tensordot/Const:output:0*
T0*
_output_shapes
: s
)sequential_58/dense_182/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¼
(sequential_58/dense_182/Tensordot/Prod_1Prod5sequential_58/dense_182/Tensordot/GatherV2_1:output:02sequential_58/dense_182/Tensordot/Const_1:output:0*
T0*
_output_shapes
: o
-sequential_58/dense_182/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
(sequential_58/dense_182/Tensordot/concatConcatV2/sequential_58/dense_182/Tensordot/free:output:0/sequential_58/dense_182/Tensordot/axes:output:06sequential_58/dense_182/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
'sequential_58/dense_182/Tensordot/stackPack/sequential_58/dense_182/Tensordot/Prod:output:01sequential_58/dense_182/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Î
+sequential_58/dense_182/Tensordot/transpose	Transpose+layer_normalization_116/batchnorm/add_1:z:01sequential_58/dense_182/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ò
)sequential_58/dense_182/Tensordot/ReshapeReshape/sequential_58/dense_182/Tensordot/transpose:y:00sequential_58/dense_182/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
(sequential_58/dense_182/Tensordot/MatMulMatMul2sequential_58/dense_182/Tensordot/Reshape:output:08sequential_58/dense_182/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
)sequential_58/dense_182/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: q
/sequential_58/dense_182/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_182/Tensordot/concat_1ConcatV23sequential_58/dense_182/Tensordot/GatherV2:output:02sequential_58/dense_182/Tensordot/Const_2:output:08sequential_58/dense_182/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ë
!sequential_58/dense_182/TensordotReshape2sequential_58/dense_182/Tensordot/MatMul:product:03sequential_58/dense_182/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¢
.sequential_58/dense_182/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_182_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ä
sequential_58/dense_182/BiasAddBiasAdd*sequential_58/dense_182/Tensordot:output:06sequential_58/dense_182/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
sequential_58/dense_182/ReluRelu(sequential_58/dense_182/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ª
0sequential_58/dense_183/Tensordot/ReadVariableOpReadVariableOp9sequential_58_dense_183_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0p
&sequential_58/dense_183/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:w
&sequential_58/dense_183/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
'sequential_58/dense_183/Tensordot/ShapeShape*sequential_58/dense_182/Relu:activations:0*
T0*
_output_shapes
:q
/sequential_58/dense_183/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_183/Tensordot/GatherV2GatherV20sequential_58/dense_183/Tensordot/Shape:output:0/sequential_58/dense_183/Tensordot/free:output:08sequential_58/dense_183/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
1sequential_58/dense_183/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,sequential_58/dense_183/Tensordot/GatherV2_1GatherV20sequential_58/dense_183/Tensordot/Shape:output:0/sequential_58/dense_183/Tensordot/axes:output:0:sequential_58/dense_183/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
'sequential_58/dense_183/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_58/dense_183/Tensordot/ProdProd3sequential_58/dense_183/Tensordot/GatherV2:output:00sequential_58/dense_183/Tensordot/Const:output:0*
T0*
_output_shapes
: s
)sequential_58/dense_183/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¼
(sequential_58/dense_183/Tensordot/Prod_1Prod5sequential_58/dense_183/Tensordot/GatherV2_1:output:02sequential_58/dense_183/Tensordot/Const_1:output:0*
T0*
_output_shapes
: o
-sequential_58/dense_183/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
(sequential_58/dense_183/Tensordot/concatConcatV2/sequential_58/dense_183/Tensordot/free:output:0/sequential_58/dense_183/Tensordot/axes:output:06sequential_58/dense_183/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
'sequential_58/dense_183/Tensordot/stackPack/sequential_58/dense_183/Tensordot/Prod:output:01sequential_58/dense_183/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Í
+sequential_58/dense_183/Tensordot/transpose	Transpose*sequential_58/dense_182/Relu:activations:01sequential_58/dense_183/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ò
)sequential_58/dense_183/Tensordot/ReshapeReshape/sequential_58/dense_183/Tensordot/transpose:y:00sequential_58/dense_183/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
(sequential_58/dense_183/Tensordot/MatMulMatMul2sequential_58/dense_183/Tensordot/Reshape:output:08sequential_58/dense_183/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
)sequential_58/dense_183/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2q
/sequential_58/dense_183/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_183/Tensordot/concat_1ConcatV23sequential_58/dense_183/Tensordot/GatherV2:output:02sequential_58/dense_183/Tensordot/Const_2:output:08sequential_58/dense_183/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ë
!sequential_58/dense_183/TensordotReshape2sequential_58/dense_183/Tensordot/MatMul:product:03sequential_58/dense_183/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.sequential_58/dense_183/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_183_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ä
sequential_58/dense_183/BiasAddBiasAdd*sequential_58/dense_183/Tensordot:output:06sequential_58/dense_183/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2^
dropout_117/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @¢
dropout_117/dropout/MulMul(sequential_58/dense_183/BiasAdd:output:0"dropout_117/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2q
dropout_117/dropout/ShapeShape(sequential_58/dense_183/BiasAdd:output:0*
T0*
_output_shapes
:¨
0dropout_117/dropout/random_uniform/RandomUniformRandomUniform"dropout_117/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0g
"dropout_117/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Î
 dropout_117/dropout/GreaterEqualGreaterEqual9dropout_117/dropout/random_uniform/RandomUniform:output:0+dropout_117/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_117/dropout/CastCast$dropout_117/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_117/dropout/Mul_1Muldropout_117/dropout/Mul:z:0dropout_117/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2+layer_normalization_116/batchnorm/add_1:z:0dropout_117/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization_117/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¿
$layer_normalization_117/moments/meanMean	add_1:z:0?layer_normalization_117/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(¡
,layer_normalization_117/moments/StopGradientStopGradient-layer_normalization_117/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¾
1layer_normalization_117/moments/SquaredDifferenceSquaredDifference	add_1:z:05layer_normalization_117/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:layer_normalization_117/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_117/moments/varianceMean5layer_normalization_117/moments/SquaredDifference:z:0Clayer_normalization_117/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(l
'layer_normalization_117/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_117/batchnorm/addAddV21layer_normalization_117/moments/variance:output:00layer_normalization_117/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'layer_normalization_117/batchnorm/RsqrtRsqrt)layer_normalization_117/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
4layer_normalization_117/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_117_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Í
%layer_normalization_117/batchnorm/mulMul+layer_normalization_117/batchnorm/Rsqrt:y:0<layer_normalization_117/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'layer_normalization_117/batchnorm/mul_1Mul	add_1:z:0)layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_117/batchnorm/mul_2Mul-layer_normalization_117/moments/mean:output:0)layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¦
0layer_normalization_117/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_117_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0É
%layer_normalization_117/batchnorm/subSub8layer_normalization_117/batchnorm/ReadVariableOp:value:0+layer_normalization_117/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_117/batchnorm/add_1AddV2+layer_normalization_117/batchnorm/mul_1:z:0)layer_normalization_117/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
IdentityIdentity+layer_normalization_117/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2´
NoOpNoOp1^layer_normalization_116/batchnorm/ReadVariableOp5^layer_normalization_116/batchnorm/mul/ReadVariableOp1^layer_normalization_117/batchnorm/ReadVariableOp5^layer_normalization_117/batchnorm/mul/ReadVariableOp<^multi_head_attention_58/attention_output/add/ReadVariableOpF^multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp/^multi_head_attention_58/key/add/ReadVariableOp9^multi_head_attention_58/key/einsum/Einsum/ReadVariableOp1^multi_head_attention_58/query/add/ReadVariableOp;^multi_head_attention_58/query/einsum/Einsum/ReadVariableOp1^multi_head_attention_58/value/add/ReadVariableOp;^multi_head_attention_58/value/einsum/Einsum/ReadVariableOp/^sequential_58/dense_182/BiasAdd/ReadVariableOp1^sequential_58/dense_182/Tensordot/ReadVariableOp/^sequential_58/dense_183/BiasAdd/ReadVariableOp1^sequential_58/dense_183/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2d
0layer_normalization_116/batchnorm/ReadVariableOp0layer_normalization_116/batchnorm/ReadVariableOp2l
4layer_normalization_116/batchnorm/mul/ReadVariableOp4layer_normalization_116/batchnorm/mul/ReadVariableOp2d
0layer_normalization_117/batchnorm/ReadVariableOp0layer_normalization_117/batchnorm/ReadVariableOp2l
4layer_normalization_117/batchnorm/mul/ReadVariableOp4layer_normalization_117/batchnorm/mul/ReadVariableOp2z
;multi_head_attention_58/attention_output/add/ReadVariableOp;multi_head_attention_58/attention_output/add/ReadVariableOp2
Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpEmulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp2`
.multi_head_attention_58/key/add/ReadVariableOp.multi_head_attention_58/key/add/ReadVariableOp2t
8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_58/query/add/ReadVariableOp0multi_head_attention_58/query/add/ReadVariableOp2x
:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_58/value/add/ReadVariableOp0multi_head_attention_58/value/add/ReadVariableOp2x
:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp2`
.sequential_58/dense_182/BiasAdd/ReadVariableOp.sequential_58/dense_182/BiasAdd/ReadVariableOp2d
0sequential_58/dense_182/Tensordot/ReadVariableOp0sequential_58/dense_182/Tensordot/ReadVariableOp2`
.sequential_58/dense_183/BiasAdd/ReadVariableOp.sequential_58/dense_183/BiasAdd/ReadVariableOp2d
0sequential_58/dense_183/Tensordot/ReadVariableOp0sequential_58/dense_183/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
û#
ã
while_body_2650498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_6_2650522_0:	2¸.
while_lstm_cell_6_2650524_0:	.¸*
while_lstm_cell_6_2650526_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_6_2650522:	2¸,
while_lstm_cell_6_2650524:	.¸(
while_lstm_cell_6_2650526:	¸¢)while/lstm_cell_6/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0²
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_2650522_0while_lstm_cell_6_2650524_0while_lstm_cell_6_2650526_0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2650438r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_6/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_6_2650522while_lstm_cell_6_2650522_0"8
while_lstm_cell_6_2650524while_lstm_cell_6_2650524_0"8
while_lstm_cell_6_2650526while_lstm_cell_6_2650526_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 
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
á?


rnn_6_while_body_2652454(
$rnn_6_while_rnn_6_while_loop_counter.
*rnn_6_while_rnn_6_while_maximum_iterations
rnn_6_while_placeholder
rnn_6_while_placeholder_1
rnn_6_while_placeholder_2
rnn_6_while_placeholder_3'
#rnn_6_while_rnn_6_strided_slice_1_0c
_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0K
8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0:	2¸M
:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.¸H
9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0:	¸
rnn_6_while_identity
rnn_6_while_identity_1
rnn_6_while_identity_2
rnn_6_while_identity_3
rnn_6_while_identity_4
rnn_6_while_identity_5%
!rnn_6_while_rnn_6_strided_slice_1a
]rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensorI
6rnn_6_while_lstm_cell_6_matmul_readvariableop_resource:	2¸K
8rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource:	.¸F
7rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource:	¸¢.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp¢-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp¢/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp
=rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ä
/rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0rnn_6_while_placeholderFrnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0§
-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0Ê
rnn_6/while/lstm_cell_6/MatMulMatMul6rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:05rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸«
/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0±
 rnn_6/while/lstm_cell_6/MatMul_1MatMulrnn_6_while_placeholder_27rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
rnn_6/while/lstm_cell_6/addAddV2(rnn_6/while/lstm_cell_6/MatMul:product:0*rnn_6/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¥
.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¶
rnn_6/while/lstm_cell_6/BiasAddBiasAddrnn_6/while/lstm_cell_6/add:z:06rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸i
'rnn_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :þ
rnn_6/while/lstm_cell_6/splitSplit0rnn_6/while/lstm_cell_6/split/split_dim:output:0(rnn_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
rnn_6/while/lstm_cell_6/SigmoidSigmoid&rnn_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_6/while/lstm_cell_6/Sigmoid_1Sigmoid&rnn_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/while/lstm_cell_6/mulMul%rnn_6/while/lstm_cell_6/Sigmoid_1:y:0rnn_6_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn_6/while/lstm_cell_6/TanhTanh&rnn_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/while/lstm_cell_6/mul_1Mul#rnn_6/while/lstm_cell_6/Sigmoid:y:0 rnn_6/while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/while/lstm_cell_6/add_1AddV2rnn_6/while/lstm_cell_6/mul:z:0!rnn_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_6/while/lstm_cell_6/Sigmoid_2Sigmoid&rnn_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.{
rnn_6/while/lstm_cell_6/Tanh_1Tanh!rnn_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¡
rnn_6/while/lstm_cell_6/mul_2Mul%rnn_6/while/lstm_cell_6/Sigmoid_2:y:0"rnn_6/while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
6rnn_6/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_6_while_placeholder_1?rnn_6/while/TensorArrayV2Write/TensorListSetItem/index:output:0!rnn_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒS
rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_6/while/addAddV2rnn_6_while_placeholderrnn_6/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_6/while/add_1AddV2$rnn_6_while_rnn_6_while_loop_counterrnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_6/while/IdentityIdentityrnn_6/while/add_1:z:0^rnn_6/while/NoOp*
T0*
_output_shapes
: 
rnn_6/while/Identity_1Identity*rnn_6_while_rnn_6_while_maximum_iterations^rnn_6/while/NoOp*
T0*
_output_shapes
: k
rnn_6/while/Identity_2Identityrnn_6/while/add:z:0^rnn_6/while/NoOp*
T0*
_output_shapes
: 
rnn_6/while/Identity_3Identity@rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_6/while/NoOp*
T0*
_output_shapes
: 
rnn_6/while/Identity_4Identity!rnn_6/while/lstm_cell_6/mul_2:z:0^rnn_6/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_6/while/Identity_5Identity!rnn_6/while/lstm_cell_6/add_1:z:0^rnn_6/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.å
rnn_6/while/NoOpNoOp/^rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp.^rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp0^rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_6_while_identityrnn_6/while/Identity:output:0"9
rnn_6_while_identity_1rnn_6/while/Identity_1:output:0"9
rnn_6_while_identity_2rnn_6/while/Identity_2:output:0"9
rnn_6_while_identity_3rnn_6/while/Identity_3:output:0"9
rnn_6_while_identity_4rnn_6/while/Identity_4:output:0"9
rnn_6_while_identity_5rnn_6/while/Identity_5:output:0"t
7rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"v
8rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"r
6rnn_6_while_lstm_cell_6_matmul_readvariableop_resource8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0"H
!rnn_6_while_rnn_6_strided_slice_1#rnn_6_while_rnn_6_strided_slice_1_0"À
]rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2`
.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2^
-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp2b
/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
õ
´
'__inference_rnn_6_layer_call_fn_2652969

inputs
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallä
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
GPU 2J 8 *K
fFRD
B__inference_rnn_6_layer_call_and_return_conditional_losses_2651189o
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
 Î
â
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2651378

inputsY
Cmulti_head_attention_58_query_einsum_einsum_readvariableop_resource:22K
9multi_head_attention_58_query_add_readvariableop_resource:2W
Amulti_head_attention_58_key_einsum_einsum_readvariableop_resource:22I
7multi_head_attention_58_key_add_readvariableop_resource:2Y
Cmulti_head_attention_58_value_einsum_einsum_readvariableop_resource:22K
9multi_head_attention_58_value_add_readvariableop_resource:2d
Nmulti_head_attention_58_attention_output_einsum_einsum_readvariableop_resource:22R
Dmulti_head_attention_58_attention_output_add_readvariableop_resource:2K
=layer_normalization_116_batchnorm_mul_readvariableop_resource:2G
9layer_normalization_116_batchnorm_readvariableop_resource:2K
9sequential_58_dense_182_tensordot_readvariableop_resource:2 E
7sequential_58_dense_182_biasadd_readvariableop_resource: K
9sequential_58_dense_183_tensordot_readvariableop_resource: 2E
7sequential_58_dense_183_biasadd_readvariableop_resource:2K
=layer_normalization_117_batchnorm_mul_readvariableop_resource:2G
9layer_normalization_117_batchnorm_readvariableop_resource:2
identity¢0layer_normalization_116/batchnorm/ReadVariableOp¢4layer_normalization_116/batchnorm/mul/ReadVariableOp¢0layer_normalization_117/batchnorm/ReadVariableOp¢4layer_normalization_117/batchnorm/mul/ReadVariableOp¢;multi_head_attention_58/attention_output/add/ReadVariableOp¢Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp¢.multi_head_attention_58/key/add/ReadVariableOp¢8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp¢0multi_head_attention_58/query/add/ReadVariableOp¢:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp¢0multi_head_attention_58/value/add/ReadVariableOp¢:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp¢.sequential_58/dense_182/BiasAdd/ReadVariableOp¢0sequential_58/dense_182/Tensordot/ReadVariableOp¢.sequential_58/dense_183/BiasAdd/ReadVariableOp¢0sequential_58/dense_183/Tensordot/ReadVariableOpÂ
:multi_head_attention_58/query/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_58_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0á
+multi_head_attention_58/query/einsum/EinsumEinsuminputsBmulti_head_attention_58/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeª
0multi_head_attention_58/query/add/ReadVariableOpReadVariableOp9multi_head_attention_58_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ô
!multi_head_attention_58/query/addAddV24multi_head_attention_58/query/einsum/Einsum:output:08multi_head_attention_58/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
8multi_head_attention_58/key/einsum/Einsum/ReadVariableOpReadVariableOpAmulti_head_attention_58_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ý
)multi_head_attention_58/key/einsum/EinsumEinsuminputs@multi_head_attention_58/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¦
.multi_head_attention_58/key/add/ReadVariableOpReadVariableOp7multi_head_attention_58_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Î
multi_head_attention_58/key/addAddV22multi_head_attention_58/key/einsum/Einsum:output:06multi_head_attention_58/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Â
:multi_head_attention_58/value/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_58_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0á
+multi_head_attention_58/value/einsum/EinsumEinsuminputsBmulti_head_attention_58/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeª
0multi_head_attention_58/value/add/ReadVariableOpReadVariableOp9multi_head_attention_58_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ô
!multi_head_attention_58/value/addAddV24multi_head_attention_58/value/einsum/Einsum:output:08multi_head_attention_58/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2b
multi_head_attention_58/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>«
multi_head_attention_58/MulMul%multi_head_attention_58/query/add:z:0&multi_head_attention_58/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2×
%multi_head_attention_58/einsum/EinsumEinsum#multi_head_attention_58/key/add:z:0multi_head_attention_58/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
'multi_head_attention_58/softmax/SoftmaxSoftmax.multi_head_attention_58/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..í
'multi_head_attention_58/einsum_1/EinsumEinsum1multi_head_attention_58/softmax/Softmax:softmax:0%multi_head_attention_58/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdØ
Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpNmulti_head_attention_58_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
6multi_head_attention_58/attention_output/einsum/EinsumEinsum0multi_head_attention_58/einsum_1/Einsum:output:0Mmulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abe¼
;multi_head_attention_58/attention_output/add/ReadVariableOpReadVariableOpDmulti_head_attention_58_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0ñ
,multi_head_attention_58/attention_output/addAddV2?multi_head_attention_58/attention_output/einsum/Einsum:output:0Cmulti_head_attention_58/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2^
dropout_116/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ª
dropout_116/dropout/MulMul0multi_head_attention_58/attention_output/add:z:0"dropout_116/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2y
dropout_116/dropout/ShapeShape0multi_head_attention_58/attention_output/add:z:0*
T0*
_output_shapes
:¨
0dropout_116/dropout/random_uniform/RandomUniformRandomUniform"dropout_116/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0g
"dropout_116/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Î
 dropout_116/dropout/GreaterEqualGreaterEqual9dropout_116/dropout/random_uniform/RandomUniform:output:0+dropout_116/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_116/dropout/CastCast$dropout_116/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_116/dropout/Mul_1Muldropout_116/dropout/Mul:z:0dropout_116/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2i
addAddV2inputsdropout_116/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization_116/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:½
$layer_normalization_116/moments/meanMeanadd:z:0?layer_normalization_116/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(¡
,layer_normalization_116/moments/StopGradientStopGradient-layer_normalization_116/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¼
1layer_normalization_116/moments/SquaredDifferenceSquaredDifferenceadd:z:05layer_normalization_116/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:layer_normalization_116/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_116/moments/varianceMean5layer_normalization_116/moments/SquaredDifference:z:0Clayer_normalization_116/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(l
'layer_normalization_116/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_116/batchnorm/addAddV21layer_normalization_116/moments/variance:output:00layer_normalization_116/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'layer_normalization_116/batchnorm/RsqrtRsqrt)layer_normalization_116/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
4layer_normalization_116/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_116_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Í
%layer_normalization_116/batchnorm/mulMul+layer_normalization_116/batchnorm/Rsqrt:y:0<layer_normalization_116/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'layer_normalization_116/batchnorm/mul_1Muladd:z:0)layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_116/batchnorm/mul_2Mul-layer_normalization_116/moments/mean:output:0)layer_normalization_116/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¦
0layer_normalization_116/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_116_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0É
%layer_normalization_116/batchnorm/subSub8layer_normalization_116/batchnorm/ReadVariableOp:value:0+layer_normalization_116/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_116/batchnorm/add_1AddV2+layer_normalization_116/batchnorm/mul_1:z:0)layer_normalization_116/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ª
0sequential_58/dense_182/Tensordot/ReadVariableOpReadVariableOp9sequential_58_dense_182_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0p
&sequential_58/dense_182/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:w
&sequential_58/dense_182/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
'sequential_58/dense_182/Tensordot/ShapeShape+layer_normalization_116/batchnorm/add_1:z:0*
T0*
_output_shapes
:q
/sequential_58/dense_182/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_182/Tensordot/GatherV2GatherV20sequential_58/dense_182/Tensordot/Shape:output:0/sequential_58/dense_182/Tensordot/free:output:08sequential_58/dense_182/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
1sequential_58/dense_182/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,sequential_58/dense_182/Tensordot/GatherV2_1GatherV20sequential_58/dense_182/Tensordot/Shape:output:0/sequential_58/dense_182/Tensordot/axes:output:0:sequential_58/dense_182/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
'sequential_58/dense_182/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_58/dense_182/Tensordot/ProdProd3sequential_58/dense_182/Tensordot/GatherV2:output:00sequential_58/dense_182/Tensordot/Const:output:0*
T0*
_output_shapes
: s
)sequential_58/dense_182/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¼
(sequential_58/dense_182/Tensordot/Prod_1Prod5sequential_58/dense_182/Tensordot/GatherV2_1:output:02sequential_58/dense_182/Tensordot/Const_1:output:0*
T0*
_output_shapes
: o
-sequential_58/dense_182/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
(sequential_58/dense_182/Tensordot/concatConcatV2/sequential_58/dense_182/Tensordot/free:output:0/sequential_58/dense_182/Tensordot/axes:output:06sequential_58/dense_182/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
'sequential_58/dense_182/Tensordot/stackPack/sequential_58/dense_182/Tensordot/Prod:output:01sequential_58/dense_182/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Î
+sequential_58/dense_182/Tensordot/transpose	Transpose+layer_normalization_116/batchnorm/add_1:z:01sequential_58/dense_182/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ò
)sequential_58/dense_182/Tensordot/ReshapeReshape/sequential_58/dense_182/Tensordot/transpose:y:00sequential_58/dense_182/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
(sequential_58/dense_182/Tensordot/MatMulMatMul2sequential_58/dense_182/Tensordot/Reshape:output:08sequential_58/dense_182/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ s
)sequential_58/dense_182/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: q
/sequential_58/dense_182/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_182/Tensordot/concat_1ConcatV23sequential_58/dense_182/Tensordot/GatherV2:output:02sequential_58/dense_182/Tensordot/Const_2:output:08sequential_58/dense_182/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ë
!sequential_58/dense_182/TensordotReshape2sequential_58/dense_182/Tensordot/MatMul:product:03sequential_58/dense_182/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¢
.sequential_58/dense_182/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_182_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ä
sequential_58/dense_182/BiasAddBiasAdd*sequential_58/dense_182/Tensordot:output:06sequential_58/dense_182/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
sequential_58/dense_182/ReluRelu(sequential_58/dense_182/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ª
0sequential_58/dense_183/Tensordot/ReadVariableOpReadVariableOp9sequential_58_dense_183_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0p
&sequential_58/dense_183/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:w
&sequential_58/dense_183/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
'sequential_58/dense_183/Tensordot/ShapeShape*sequential_58/dense_182/Relu:activations:0*
T0*
_output_shapes
:q
/sequential_58/dense_183/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_183/Tensordot/GatherV2GatherV20sequential_58/dense_183/Tensordot/Shape:output:0/sequential_58/dense_183/Tensordot/free:output:08sequential_58/dense_183/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
1sequential_58/dense_183/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,sequential_58/dense_183/Tensordot/GatherV2_1GatherV20sequential_58/dense_183/Tensordot/Shape:output:0/sequential_58/dense_183/Tensordot/axes:output:0:sequential_58/dense_183/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
'sequential_58/dense_183/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_58/dense_183/Tensordot/ProdProd3sequential_58/dense_183/Tensordot/GatherV2:output:00sequential_58/dense_183/Tensordot/Const:output:0*
T0*
_output_shapes
: s
)sequential_58/dense_183/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¼
(sequential_58/dense_183/Tensordot/Prod_1Prod5sequential_58/dense_183/Tensordot/GatherV2_1:output:02sequential_58/dense_183/Tensordot/Const_1:output:0*
T0*
_output_shapes
: o
-sequential_58/dense_183/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
(sequential_58/dense_183/Tensordot/concatConcatV2/sequential_58/dense_183/Tensordot/free:output:0/sequential_58/dense_183/Tensordot/axes:output:06sequential_58/dense_183/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
'sequential_58/dense_183/Tensordot/stackPack/sequential_58/dense_183/Tensordot/Prod:output:01sequential_58/dense_183/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Í
+sequential_58/dense_183/Tensordot/transpose	Transpose*sequential_58/dense_182/Relu:activations:01sequential_58/dense_183/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ò
)sequential_58/dense_183/Tensordot/ReshapeReshape/sequential_58/dense_183/Tensordot/transpose:y:00sequential_58/dense_183/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
(sequential_58/dense_183/Tensordot/MatMulMatMul2sequential_58/dense_183/Tensordot/Reshape:output:08sequential_58/dense_183/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
)sequential_58/dense_183/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2q
/sequential_58/dense_183/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_58/dense_183/Tensordot/concat_1ConcatV23sequential_58/dense_183/Tensordot/GatherV2:output:02sequential_58/dense_183/Tensordot/Const_2:output:08sequential_58/dense_183/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ë
!sequential_58/dense_183/TensordotReshape2sequential_58/dense_183/Tensordot/MatMul:product:03sequential_58/dense_183/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.sequential_58/dense_183/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_183_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ä
sequential_58/dense_183/BiasAddBiasAdd*sequential_58/dense_183/Tensordot:output:06sequential_58/dense_183/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2^
dropout_117/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @¢
dropout_117/dropout/MulMul(sequential_58/dense_183/BiasAdd:output:0"dropout_117/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2q
dropout_117/dropout/ShapeShape(sequential_58/dense_183/BiasAdd:output:0*
T0*
_output_shapes
:¨
0dropout_117/dropout/random_uniform/RandomUniformRandomUniform"dropout_117/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0g
"dropout_117/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Î
 dropout_117/dropout/GreaterEqualGreaterEqual9dropout_117/dropout/random_uniform/RandomUniform:output:0+dropout_117/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_117/dropout/CastCast$dropout_117/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_117/dropout/Mul_1Muldropout_117/dropout/Mul:z:0dropout_117/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2+layer_normalization_116/batchnorm/add_1:z:0dropout_117/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
6layer_normalization_117/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¿
$layer_normalization_117/moments/meanMean	add_1:z:0?layer_normalization_117/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(¡
,layer_normalization_117/moments/StopGradientStopGradient-layer_normalization_117/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¾
1layer_normalization_117/moments/SquaredDifferenceSquaredDifference	add_1:z:05layer_normalization_117/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:layer_normalization_117/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_117/moments/varianceMean5layer_normalization_117/moments/SquaredDifference:z:0Clayer_normalization_117/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(l
'layer_normalization_117/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_117/batchnorm/addAddV21layer_normalization_117/moments/variance:output:00layer_normalization_117/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'layer_normalization_117/batchnorm/RsqrtRsqrt)layer_normalization_117/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
4layer_normalization_117/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_117_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Í
%layer_normalization_117/batchnorm/mulMul+layer_normalization_117/batchnorm/Rsqrt:y:0<layer_normalization_117/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'layer_normalization_117/batchnorm/mul_1Mul	add_1:z:0)layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_117/batchnorm/mul_2Mul-layer_normalization_117/moments/mean:output:0)layer_normalization_117/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¦
0layer_normalization_117/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_117_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0É
%layer_normalization_117/batchnorm/subSub8layer_normalization_117/batchnorm/ReadVariableOp:value:0+layer_normalization_117/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¾
'layer_normalization_117/batchnorm/add_1AddV2+layer_normalization_117/batchnorm/mul_1:z:0)layer_normalization_117/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
IdentityIdentity+layer_normalization_117/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2´
NoOpNoOp1^layer_normalization_116/batchnorm/ReadVariableOp5^layer_normalization_116/batchnorm/mul/ReadVariableOp1^layer_normalization_117/batchnorm/ReadVariableOp5^layer_normalization_117/batchnorm/mul/ReadVariableOp<^multi_head_attention_58/attention_output/add/ReadVariableOpF^multi_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp/^multi_head_attention_58/key/add/ReadVariableOp9^multi_head_attention_58/key/einsum/Einsum/ReadVariableOp1^multi_head_attention_58/query/add/ReadVariableOp;^multi_head_attention_58/query/einsum/Einsum/ReadVariableOp1^multi_head_attention_58/value/add/ReadVariableOp;^multi_head_attention_58/value/einsum/Einsum/ReadVariableOp/^sequential_58/dense_182/BiasAdd/ReadVariableOp1^sequential_58/dense_182/Tensordot/ReadVariableOp/^sequential_58/dense_183/BiasAdd/ReadVariableOp1^sequential_58/dense_183/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2d
0layer_normalization_116/batchnorm/ReadVariableOp0layer_normalization_116/batchnorm/ReadVariableOp2l
4layer_normalization_116/batchnorm/mul/ReadVariableOp4layer_normalization_116/batchnorm/mul/ReadVariableOp2d
0layer_normalization_117/batchnorm/ReadVariableOp0layer_normalization_117/batchnorm/ReadVariableOp2l
4layer_normalization_117/batchnorm/mul/ReadVariableOp4layer_normalization_117/batchnorm/mul/ReadVariableOp2z
;multi_head_attention_58/attention_output/add/ReadVariableOp;multi_head_attention_58/attention_output/add/ReadVariableOp2
Emulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOpEmulti_head_attention_58/attention_output/einsum/Einsum/ReadVariableOp2`
.multi_head_attention_58/key/add/ReadVariableOp.multi_head_attention_58/key/add/ReadVariableOp2t
8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp8multi_head_attention_58/key/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_58/query/add/ReadVariableOp0multi_head_attention_58/query/add/ReadVariableOp2x
:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp:multi_head_attention_58/query/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_58/value/add/ReadVariableOp0multi_head_attention_58/value/add/ReadVariableOp2x
:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp:multi_head_attention_58/value/einsum/Einsum/ReadVariableOp2`
.sequential_58/dense_182/BiasAdd/ReadVariableOp.sequential_58/dense_182/BiasAdd/ReadVariableOp2d
0sequential_58/dense_182/Tensordot/ReadVariableOp0sequential_58/dense_182/Tensordot/ReadVariableOp2`
.sequential_58/dense_183/BiasAdd/ReadVariableOp.sequential_58/dense_183/BiasAdd/ReadVariableOp2d
0sequential_58/dense_183/Tensordot/ReadVariableOp0sequential_58/dense_183/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
â	
À
rnn_6_while_cond_2652140(
$rnn_6_while_rnn_6_while_loop_counter.
*rnn_6_while_rnn_6_while_maximum_iterations
rnn_6_while_placeholder
rnn_6_while_placeholder_1
rnn_6_while_placeholder_2
rnn_6_while_placeholder_3*
&rnn_6_while_less_rnn_6_strided_slice_1A
=rnn_6_while_rnn_6_while_cond_2652140___redundant_placeholder0A
=rnn_6_while_rnn_6_while_cond_2652140___redundant_placeholder1A
=rnn_6_while_rnn_6_while_cond_2652140___redundant_placeholder2A
=rnn_6_while_rnn_6_while_cond_2652140___redundant_placeholder3
rnn_6_while_identity
z
rnn_6/while/LessLessrnn_6_while_placeholder&rnn_6_while_less_rnn_6_strided_slice_1*
T0*
_output_shapes
: W
rnn_6/while/IdentityIdentityrnn_6/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_6_while_identityrnn_6/while/Identity:output:0*(
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
Ä
°
*__inference_model_55_layer_call_fn_2651938

inputs
unknown:.2
	unknown_0:	2
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
identity¢StatefulPartitionedCall
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
GPU 2J 8 *N
fIRG
E__inference_model_55_layer_call_and_return_conditional_losses_2651539o
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
¥
ý
F__inference_dense_182_layer_call_and_return_conditional_losses_2650069

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
Ê
²
*__inference_model_55_layer_call_fn_2651647
input_60
unknown:.2
	unknown_0:	2
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
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_60unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *N
fIRG
E__inference_model_55_layer_call_and_return_conditional_losses_2651539o
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
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
input_60
Í
ý
F__inference_dense_183_layer_call_and_return_conditional_losses_2650105

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
Á

H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2650291

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


÷
F__inference_dense_186_layer_call_and_return_conditional_losses_2653565

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
Ñ8
È
while_body_2653029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_6_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_6/BiasAdd/ReadVariableOp¢'while/lstm_cell_6/MatMul/ReadVariableOp¢)while/lstm_cell_6/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
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
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
Æ

+__inference_dense_187_layer_call_fn_2653574

inputs
unknown:.
	unknown_0:
identity¢StatefulPartitionedCallÛ
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
GPU 2J 8 *O
fJRH
F__inference_dense_187_layer_call_and_return_conditional_losses_2650952o
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
í
Æ
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650224
dense_182_input#
dense_182_2650213:2 
dense_182_2650215: #
dense_183_2650218: 2
dense_183_2650220:2
identity¢!dense_182/StatefulPartitionedCall¢!dense_183/StatefulPartitionedCall
!dense_182/StatefulPartitionedCallStatefulPartitionedCalldense_182_inputdense_182_2650213dense_182_2650215*
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
GPU 2J 8 *O
fJRH
F__inference_dense_182_layer_call_and_return_conditional_losses_2650069
!dense_183/StatefulPartitionedCallStatefulPartitionedCall*dense_182/StatefulPartitionedCall:output:0dense_183_2650218dense_183_2650220*
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
GPU 2J 8 *O
fJRH
F__inference_dense_183_layer_call_and_return_conditional_losses_2650105}
IdentityIdentity*dense_183/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp"^dense_182/StatefulPartitionedCall"^dense_183/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2F
!dense_182/StatefulPartitionedCall!dense_182/StatefulPartitionedCall2F
!dense_183/StatefulPartitionedCall!dense_183/StatefulPartitionedCall:\ X
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
)
_user_specified_namedense_182_input
æ(
°
E__inference_model_55_layer_call_and_return_conditional_losses_2651539

inputs9
'token_and_position_embedding_59_2651483:.2:
'token_and_position_embedding_59_2651485:	24
transformer_encoder_58_2651488:220
transformer_encoder_58_2651490:24
transformer_encoder_58_2651492:220
transformer_encoder_58_2651494:24
transformer_encoder_58_2651496:220
transformer_encoder_58_2651498:24
transformer_encoder_58_2651500:22,
transformer_encoder_58_2651502:2,
transformer_encoder_58_2651504:2,
transformer_encoder_58_2651506:20
transformer_encoder_58_2651508:2 ,
transformer_encoder_58_2651510: 0
transformer_encoder_58_2651512: 2,
transformer_encoder_58_2651514:2,
transformer_encoder_58_2651516:2,
transformer_encoder_58_2651518:2 
rnn_6_2651521:	2¸ 
rnn_6_2651523:	.¸
rnn_6_2651525:	¸#
dense_186_2651528:..
dense_186_2651530:.#
dense_187_2651533:.
dense_187_2651535:
identity¢!dense_186/StatefulPartitionedCall¢!dense_187/StatefulPartitionedCall¢rnn_6/StatefulPartitionedCall¢7token_and_position_embedding_59/StatefulPartitionedCall¢.transformer_encoder_58/StatefulPartitionedCallÓ
7token_and_position_embedding_59/StatefulPartitionedCallStatefulPartitionedCallinputs'token_and_position_embedding_59_2651483'token_and_position_embedding_59_2651485*
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
GPU 2J 8 *e
f`R^
\__inference_token_and_position_embedding_59_layer_call_and_return_conditional_losses_2650607Å
.transformer_encoder_58/StatefulPartitionedCallStatefulPartitionedCall@token_and_position_embedding_59/StatefulPartitionedCall:output:0transformer_encoder_58_2651488transformer_encoder_58_2651490transformer_encoder_58_2651492transformer_encoder_58_2651494transformer_encoder_58_2651496transformer_encoder_58_2651498transformer_encoder_58_2651500transformer_encoder_58_2651502transformer_encoder_58_2651504transformer_encoder_58_2651506transformer_encoder_58_2651508transformer_encoder_58_2651510transformer_encoder_58_2651512transformer_encoder_58_2651514transformer_encoder_58_2651516transformer_encoder_58_2651518*
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
GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2651378©
rnn_6/StatefulPartitionedCallStatefulPartitionedCall7transformer_encoder_58/StatefulPartitionedCall:output:0rnn_6_2651521rnn_6_2651523rnn_6_2651525*
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
GPU 2J 8 *K
fFRD
B__inference_rnn_6_layer_call_and_return_conditional_losses_2651189
!dense_186/StatefulPartitionedCallStatefulPartitionedCall&rnn_6/StatefulPartitionedCall:output:0dense_186_2651528dense_186_2651530*
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
GPU 2J 8 *O
fJRH
F__inference_dense_186_layer_call_and_return_conditional_losses_2650936
!dense_187/StatefulPartitionedCallStatefulPartitionedCall*dense_186/StatefulPartitionedCall:output:0dense_187_2651533dense_187_2651535*
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
GPU 2J 8 *O
fJRH
F__inference_dense_187_layer_call_and_return_conditional_losses_2650952y
IdentityIdentity*dense_187/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp"^dense_186/StatefulPartitionedCall"^dense_187/StatefulPartitionedCall^rnn_6/StatefulPartitionedCall8^token_and_position_embedding_59/StatefulPartitionedCall/^transformer_encoder_58/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : : : : 2F
!dense_186/StatefulPartitionedCall!dense_186/StatefulPartitionedCall2F
!dense_187/StatefulPartitionedCall!dense_187/StatefulPartitionedCall2>
rnn_6/StatefulPartitionedCallrnn_6/StatefulPartitionedCall2r
7token_and_position_embedding_59/StatefulPartitionedCall7token_and_position_embedding_59/StatefulPartitionedCall2`
.transformer_encoder_58/StatefulPartitionedCall.transformer_encoder_58/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
Ä
°
*__inference_model_55_layer_call_fn_2651883

inputs
unknown:.2
	unknown_0:	2
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
identity¢StatefulPartitionedCall
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
GPU 2J 8 *N
fIRG
E__inference_model_55_layer_call_and_return_conditional_losses_2650959o
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
ë
ö
-__inference_lstm_cell_6_layer_call_fn_2653741

inputs
states_0
states_1
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity

identity_1

identity_2¢StatefulPartitionedCall¨
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
GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2650291o
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
Æ

+__inference_dense_186_layer_call_fn_2653554

inputs
unknown:..
	unknown_0:.
identity¢StatefulPartitionedCallÛ
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
GPU 2J 8 *O
fJRH
F__inference_dense_186_layer_call_and_return_conditional_losses_2650936o
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
¢
­
%__inference_signature_wrapper_2651828
input_60
unknown:.2
	unknown_0:	2
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
StatefulPartitionedCallStatefulPartitionedCallinput_60unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *+
f&R$
"__inference__wrapped_model_2650031o
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
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
input_60"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*®
serving_default
=
input_601
serving_default_input_60:0ÿÿÿÿÿÿÿÿÿ.=
	dense_1870
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÀÉ
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
Ý
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32ò
*__inference_model_55_layer_call_fn_2651012
*__inference_model_55_layer_call_fn_2651883
*__inference_model_55_layer_call_fn_2651938
*__inference_model_55_layer_call_fn_2651647¿
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
É
Ztrace_0
[trace_1
\trace_2
]trace_32Þ
E__inference_model_55_layer_call_and_return_conditional_losses_2652238
E__inference_model_55_layer_call_and_return_conditional_losses_2652551
E__inference_model_55_layer_call_and_return_conditional_losses_2651706
E__inference_model_55_layer_call_and_return_conditional_losses_2651765¿
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
"__inference__wrapped_model_2650031input_60"
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
blearning_rate2m÷3mø:mù;mú<mû=mü>mý?mþ@mÿAmBmCmDmEmFmGmHmImJmKmLmMmNmOmPm2v3v:v;v<v=v>v?v@vAvBvCvDvEvFvGvHv Iv¡Jv¢Kv£Lv¤Mv¥Nv¦Ov§Pv¨"
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

itrace_02ã
A__inference_token_and_position_embedding_59_layer_call_fn_2652560
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

jtrace_02þ
\__inference_token_and_position_embedding_59_layer_call_and_return_conditional_losses_2652584
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
Ü
|trace_0
}trace_12¥
8__inference_transformer_encoder_58_layer_call_fn_2652621
8__inference_transformer_encoder_58_layer_call_fn_2652658®
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

~trace_0
trace_12Û
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2652785
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2652925®
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
ÿ
¶trace_0
·trace_1
¸trace_2
¹trace_32
'__inference_rnn_6_layer_call_fn_2652936
'__inference_rnn_6_layer_call_fn_2652947
'__inference_rnn_6_layer_call_fn_2652958
'__inference_rnn_6_layer_call_fn_2652969å
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
ë
ºtrace_0
»trace_1
¼trace_2
½trace_32ø
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653113
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653257
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653401
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653545å
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
ñ
Ëtrace_02Ò
+__inference_dense_186_layer_call_fn_2653554¢
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

Ìtrace_02í
F__inference_dense_186_layer_call_and_return_conditional_losses_2653565¢
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
": ..2dense_186/kernel
:.2dense_186/bias
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
ñ
Òtrace_02Ò
+__inference_dense_187_layer_call_fn_2653574¢
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

Ótrace_02í
F__inference_dense_187_layer_call_and_return_conditional_losses_2653584¢
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
": .2dense_187/kernel
:2dense_187/bias
K:I	228token_and_position_embedding_59/embedding_118/embeddings
J:H.228token_and_position_embedding_59/embedding_119/embeddings
Q:O222;transformer_encoder_58/multi_head_attention_58/query/kernel
K:I229transformer_encoder_58/multi_head_attention_58/query/bias
O:M2229transformer_encoder_58/multi_head_attention_58/key/kernel
I:G227transformer_encoder_58/multi_head_attention_58/key/bias
Q:O222;transformer_encoder_58/multi_head_attention_58/value/kernel
K:I229transformer_encoder_58/multi_head_attention_58/value/bias
\:Z222Ftransformer_encoder_58/multi_head_attention_58/attention_output/kernel
R:P22Dtransformer_encoder_58/multi_head_attention_58/attention_output/bias
": 2 2dense_182/kernel
: 2dense_182/bias
":  22dense_183/kernel
:22dense_183/bias
B:@224transformer_encoder_58/layer_normalization_116/gamma
A:?223transformer_encoder_58/layer_normalization_116/beta
B:@224transformer_encoder_58/layer_normalization_117/gamma
A:?223transformer_encoder_58/layer_normalization_117/beta
+:)	2¸2rnn_6/lstm_cell_6/kernel
5:3	.¸2"rnn_6/lstm_cell_6/recurrent_kernel
%:#¸2rnn_6/lstm_cell_6/bias
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
(
Ô0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ýBú
*__inference_model_55_layer_call_fn_2651012input_60"¿
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
ûBø
*__inference_model_55_layer_call_fn_2651883inputs"¿
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
ûBø
*__inference_model_55_layer_call_fn_2651938inputs"¿
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
ýBú
*__inference_model_55_layer_call_fn_2651647input_60"¿
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
B
E__inference_model_55_layer_call_and_return_conditional_losses_2652238inputs"¿
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
B
E__inference_model_55_layer_call_and_return_conditional_losses_2652551inputs"¿
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
B
E__inference_model_55_layer_call_and_return_conditional_losses_2651706input_60"¿
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
B
E__inference_model_55_layer_call_and_return_conditional_losses_2651765input_60"¿
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
%__inference_signature_wrapper_2651828input_60"
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
ëBè
A__inference_token_and_position_embedding_59_layer_call_fn_2652560x"
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
B
\__inference_token_and_position_embedding_59_layer_call_and_return_conditional_losses_2652584x"
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
Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
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
Únon_trainable_variables
Ûlayers
Ümetrics
 Ýlayer_regularization_losses
Þlayer_metrics
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
øBõ
8__inference_transformer_encoder_58_layer_call_fn_2652621inputs"®
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
øBõ
8__inference_transformer_encoder_58_layer_call_fn_2652658inputs"®
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
B
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2652785inputs"®
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
B
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2652925inputs"®
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
ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
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
ä	variables
åtrainable_variables
æregularization_losses
ç	keras_api
è__call__
+é&call_and_return_all_conditional_losses
êpartial_output_shape
ëfull_output_shape

>kernel
?bias"
_tf_keras_layer
ô
ì	variables
ítrainable_variables
îregularization_losses
ï	keras_api
ð__call__
+ñ&call_and_return_all_conditional_losses
òpartial_output_shape
ófull_output_shape

@kernel
Abias"
_tf_keras_layer
ô
ô	variables
õtrainable_variables
öregularization_losses
÷	keras_api
ø__call__
+ù&call_and_return_all_conditional_losses
úpartial_output_shape
ûfull_output_shape

Bkernel
Cbias"
_tf_keras_layer
«
ü	variables
ýtrainable_variables
þregularization_losses
ÿ	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
ô
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Dkernel
Ebias"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Fkernel
Gbias"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

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
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ù
¢trace_0
£trace_1
¤trace_2
¥trace_32
/__inference_sequential_58_layer_call_fn_2650123
/__inference_sequential_58_layer_call_fn_2653597
/__inference_sequential_58_layer_call_fn_2653610
/__inference_sequential_58_layer_call_fn_2650196¿
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
 z¢trace_0z£trace_1z¤trace_2z¥trace_3
å
¦trace_0
§trace_1
¨trace_2
©trace_32ò
J__inference_sequential_58_layer_call_and_return_conditional_losses_2653667
J__inference_sequential_58_layer_call_and_return_conditional_losses_2653724
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650210
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650224¿
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
 z¦trace_0z§trace_1z¨trace_2z©trace_3
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
ªnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
®layer_metrics
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
¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
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
´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
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
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
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
 B
'__inference_rnn_6_layer_call_fn_2652936inputs/0"å
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
 B
'__inference_rnn_6_layer_call_fn_2652947inputs/0"å
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
B
'__inference_rnn_6_layer_call_fn_2652958inputs"å
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
B
'__inference_rnn_6_layer_call_fn_2652969inputs"å
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
»B¸
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653113inputs/0"å
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
»B¸
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653257inputs/0"å
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
¹B¶
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653401inputs"å
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
¹B¶
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653545inputs"å
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
¾non_trainable_variables
¿layers
Àmetrics
 Álayer_regularization_losses
Âlayer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
Ù
Ãtrace_0
Ätrace_12
-__inference_lstm_cell_6_layer_call_fn_2653741
-__inference_lstm_cell_6_layer_call_fn_2653758½
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
 zÃtrace_0zÄtrace_1

Åtrace_0
Ætrace_12Ô
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2653790
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2653822½
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
 zÅtrace_0zÆtrace_1
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
ßBÜ
+__inference_dense_186_layer_call_fn_2653554inputs"¢
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
úB÷
F__inference_dense_186_layer_call_and_return_conditional_losses_2653565inputs"¢
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
ßBÜ
+__inference_dense_187_layer_call_fn_2653574inputs"¢
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
úB÷
F__inference_dense_187_layer_call_and_return_conditional_losses_2653584inputs"¢
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
Ç	variables
È	keras_api

Étotal

Êcount"
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
Ënon_trainable_variables
Ìlayers
Ímetrics
 Îlayer_regularization_losses
Ïlayer_metrics
ä	variables
åtrainable_variables
æregularization_losses
è__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses"
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
Ðnon_trainable_variables
Ñlayers
Òmetrics
 Ólayer_regularization_losses
Ôlayer_metrics
ì	variables
ítrainable_variables
îregularization_losses
ð__call__
+ñ&call_and_return_all_conditional_losses
'ñ"call_and_return_conditional_losses"
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
Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
ô	variables
õtrainable_variables
öregularization_losses
ø__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses"
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
Únon_trainable_variables
Ûlayers
Ümetrics
 Ýlayer_regularization_losses
Þlayer_metrics
ü	variables
ýtrainable_variables
þregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
änon_trainable_variables
ålayers
æmetrics
 çlayer_regularization_losses
èlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
énon_trainable_variables
êlayers
ëmetrics
 ìlayer_regularization_losses
ílayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ñ
îtrace_02Ò
+__inference_dense_182_layer_call_fn_2653831¢
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
 zîtrace_0

ïtrace_02í
F__inference_dense_182_layer_call_and_return_conditional_losses_2653862¢
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
 zïtrace_0
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
ðnon_trainable_variables
ñlayers
òmetrics
 ólayer_regularization_losses
ôlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ñ
õtrace_02Ò
+__inference_dense_183_layer_call_fn_2653871¢
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

ötrace_02í
F__inference_dense_183_layer_call_and_return_conditional_losses_2653901¢
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
 zötrace_0
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
B
/__inference_sequential_58_layer_call_fn_2650123dense_182_input"¿
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
Bý
/__inference_sequential_58_layer_call_fn_2653597inputs"¿
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
Bý
/__inference_sequential_58_layer_call_fn_2653610inputs"¿
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
B
/__inference_sequential_58_layer_call_fn_2650196dense_182_input"¿
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
B
J__inference_sequential_58_layer_call_and_return_conditional_losses_2653667inputs"¿
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
B
J__inference_sequential_58_layer_call_and_return_conditional_losses_2653724inputs"¿
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
¤B¡
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650210dense_182_input"¿
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
¤B¡
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650224dense_182_input"¿
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
B
-__inference_lstm_cell_6_layer_call_fn_2653741inputsstates/0states/1"½
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
B
-__inference_lstm_cell_6_layer_call_fn_2653758inputsstates/0states/1"½
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
«B¨
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2653790inputsstates/0states/1"½
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
«B¨
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2653822inputsstates/0states/1"½
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
É0
Ê1"
trackable_list_wrapper
.
Ç	variables"
_generic_user_object
:  (2total
:  (2count
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
ßBÜ
+__inference_dense_182_layer_call_fn_2653831inputs"¢
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
úB÷
F__inference_dense_182_layer_call_and_return_conditional_losses_2653862inputs"¢
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
ßBÜ
+__inference_dense_183_layer_call_fn_2653871inputs"¢
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
úB÷
F__inference_dense_183_layer_call_and_return_conditional_losses_2653901inputs"¢
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
':%..2Adam/dense_186/kernel/m
!:.2Adam/dense_186/bias/m
':%.2Adam/dense_187/kernel/m
!:2Adam/dense_187/bias/m
P:N	22?Adam/token_and_position_embedding_59/embedding_118/embeddings/m
O:M.22?Adam/token_and_position_embedding_59/embedding_119/embeddings/m
V:T222BAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/m
P:N22@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/m
T:R222@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/m
N:L22>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/m
V:T222BAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/m
P:N22@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/m
a:_222MAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/m
W:U22KAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/m
':%2 2Adam/dense_182/kernel/m
!: 2Adam/dense_182/bias/m
':% 22Adam/dense_183/kernel/m
!:22Adam/dense_183/bias/m
G:E22;Adam/transformer_encoder_58/layer_normalization_116/gamma/m
F:D22:Adam/transformer_encoder_58/layer_normalization_116/beta/m
G:E22;Adam/transformer_encoder_58/layer_normalization_117/gamma/m
F:D22:Adam/transformer_encoder_58/layer_normalization_117/beta/m
0:.	2¸2Adam/rnn_6/lstm_cell_6/kernel/m
::8	.¸2)Adam/rnn_6/lstm_cell_6/recurrent_kernel/m
*:(¸2Adam/rnn_6/lstm_cell_6/bias/m
':%..2Adam/dense_186/kernel/v
!:.2Adam/dense_186/bias/v
':%.2Adam/dense_187/kernel/v
!:2Adam/dense_187/bias/v
P:N	22?Adam/token_and_position_embedding_59/embedding_118/embeddings/v
O:M.22?Adam/token_and_position_embedding_59/embedding_119/embeddings/v
V:T222BAdam/transformer_encoder_58/multi_head_attention_58/query/kernel/v
P:N22@Adam/transformer_encoder_58/multi_head_attention_58/query/bias/v
T:R222@Adam/transformer_encoder_58/multi_head_attention_58/key/kernel/v
N:L22>Adam/transformer_encoder_58/multi_head_attention_58/key/bias/v
V:T222BAdam/transformer_encoder_58/multi_head_attention_58/value/kernel/v
P:N22@Adam/transformer_encoder_58/multi_head_attention_58/value/bias/v
a:_222MAdam/transformer_encoder_58/multi_head_attention_58/attention_output/kernel/v
W:U22KAdam/transformer_encoder_58/multi_head_attention_58/attention_output/bias/v
':%2 2Adam/dense_182/kernel/v
!: 2Adam/dense_182/bias/v
':% 22Adam/dense_183/kernel/v
!:22Adam/dense_183/bias/v
G:E22;Adam/transformer_encoder_58/layer_normalization_116/gamma/v
F:D22:Adam/transformer_encoder_58/layer_normalization_116/beta/v
G:E22;Adam/transformer_encoder_58/layer_normalization_117/gamma/v
F:D22:Adam/transformer_encoder_58/layer_normalization_117/beta/v
0:.	2¸2Adam/rnn_6/lstm_cell_6/kernel/v
::8	.¸2)Adam/rnn_6/lstm_cell_6/recurrent_kernel/v
*:(¸2Adam/rnn_6/lstm_cell_6/bias/v¬
"__inference__wrapped_model_2650031=<>?@ABCDEJKFGHILMNOP23:;1¢.
'¢$
"
input_60ÿÿÿÿÿÿÿÿÿ.
ª "5ª2
0
	dense_187# 
	dense_187ÿÿÿÿÿÿÿÿÿ®
F__inference_dense_182_layer_call_and_return_conditional_losses_2653862dFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ.2
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ. 
 
+__inference_dense_182_layer_call_fn_2653831WFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ.2
ª "ÿÿÿÿÿÿÿÿÿ. ®
F__inference_dense_183_layer_call_and_return_conditional_losses_2653901dHI3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ. 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 
+__inference_dense_183_layer_call_fn_2653871WHI3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ. 
ª "ÿÿÿÿÿÿÿÿÿ.2¦
F__inference_dense_186_layer_call_and_return_conditional_losses_2653565\23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 ~
+__inference_dense_186_layer_call_fn_2653554O23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿ.¦
F__inference_dense_187_layer_call_and_return_conditional_losses_2653584\:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_187_layer_call_fn_2653574O:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿÊ
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2653790ýNOP¢}
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
 Ê
H__inference_lstm_cell_6_layer_call_and_return_conditional_losses_2653822ýNOP¢}
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
 
-__inference_lstm_cell_6_layer_call_fn_2653741íNOP¢}
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
1/1ÿÿÿÿÿÿÿÿÿ.
-__inference_lstm_cell_6_layer_call_fn_2653758íNOP¢}
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
1/1ÿÿÿÿÿÿÿÿÿ.Æ
E__inference_model_55_layer_call_and_return_conditional_losses_2651706}=<>?@ABCDEJKFGHILMNOP23:;9¢6
/¢,
"
input_60ÿÿÿÿÿÿÿÿÿ.
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
E__inference_model_55_layer_call_and_return_conditional_losses_2651765}=<>?@ABCDEJKFGHILMNOP23:;9¢6
/¢,
"
input_60ÿÿÿÿÿÿÿÿÿ.
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
E__inference_model_55_layer_call_and_return_conditional_losses_2652238{=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
E__inference_model_55_layer_call_and_return_conditional_losses_2652551{=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_model_55_layer_call_fn_2651012p=<>?@ABCDEJKFGHILMNOP23:;9¢6
/¢,
"
input_60ÿÿÿÿÿÿÿÿÿ.
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_model_55_layer_call_fn_2651647p=<>?@ABCDEJKFGHILMNOP23:;9¢6
/¢,
"
input_60ÿÿÿÿÿÿÿÿÿ.
p

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_model_55_layer_call_fn_2651883n=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_model_55_layer_call_fn_2651938n=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653113NOPS¢P
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
 È
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653257NOPS¢P
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
 ·
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653401qNOPC¢@
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
 ·
B__inference_rnn_6_layer_call_and_return_conditional_losses_2653545qNOPC¢@
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
 
'__inference_rnn_6_layer_call_fn_2652936tNOPS¢P
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
ª "ÿÿÿÿÿÿÿÿÿ.
'__inference_rnn_6_layer_call_fn_2652947tNOPS¢P
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
ª "ÿÿÿÿÿÿÿÿÿ.
'__inference_rnn_6_layer_call_fn_2652958dNOPC¢@
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
ª "ÿÿÿÿÿÿÿÿÿ.
'__inference_rnn_6_layer_call_fn_2652969dNOPC¢@
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
ª "ÿÿÿÿÿÿÿÿÿ.Å
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650210wFGHID¢A
:¢7
-*
dense_182_inputÿÿÿÿÿÿÿÿÿ.2
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 Å
J__inference_sequential_58_layer_call_and_return_conditional_losses_2650224wFGHID¢A
:¢7
-*
dense_182_inputÿÿÿÿÿÿÿÿÿ.2
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 ¼
J__inference_sequential_58_layer_call_and_return_conditional_losses_2653667nFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 ¼
J__inference_sequential_58_layer_call_and_return_conditional_losses_2653724nFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 
/__inference_sequential_58_layer_call_fn_2650123jFGHID¢A
:¢7
-*
dense_182_inputÿÿÿÿÿÿÿÿÿ.2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ.2
/__inference_sequential_58_layer_call_fn_2650196jFGHID¢A
:¢7
-*
dense_182_inputÿÿÿÿÿÿÿÿÿ.2
p

 
ª "ÿÿÿÿÿÿÿÿÿ.2
/__inference_sequential_58_layer_call_fn_2653597aFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ.2
/__inference_sequential_58_layer_call_fn_2653610aFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p

 
ª "ÿÿÿÿÿÿÿÿÿ.2»
%__inference_signature_wrapper_2651828=<>?@ABCDEJKFGHILMNOP23:;=¢:
¢ 
3ª0
.
input_60"
input_60ÿÿÿÿÿÿÿÿÿ."5ª2
0
	dense_187# 
	dense_187ÿÿÿÿÿÿÿÿÿ»
\__inference_token_and_position_embedding_59_layer_call_and_return_conditional_losses_2652584[=<*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ.
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 
A__inference_token_and_position_embedding_59_layer_call_fn_2652560N=<*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿ.2Í
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2652785v>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 Í
S__inference_transformer_encoder_58_layer_call_and_return_conditional_losses_2652925v>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 ¥
8__inference_transformer_encoder_58_layer_call_fn_2652621i>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 
ª "ÿÿÿÿÿÿÿÿÿ.2¥
8__inference_transformer_encoder_58_layer_call_fn_2652658i>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p
ª "ÿÿÿÿÿÿÿÿÿ.2