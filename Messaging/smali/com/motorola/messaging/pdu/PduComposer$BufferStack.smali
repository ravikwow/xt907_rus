.class Lcom/motorola/messaging/pdu/PduComposer$BufferStack;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferStack"
.end annotation


# instance fields
.field private stack:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

.field stackSize:I

.field final synthetic this$0:Lcom/motorola/messaging/pdu/PduComposer;

.field private toCopy:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/pdu/PduComposer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1062
    iput-object p1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stack:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    .line 1064
    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->toCopy:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    .line 1066
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stackSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/pdu/PduComposer;Lcom/motorola/messaging/pdu/PduComposer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/pdu/PduComposer;
    .param p2, "x1"    # Lcom/motorola/messaging/pdu/PduComposer$1;

    .prologue
    .line 1062
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;-><init>(Lcom/motorola/messaging/pdu/PduComposer;)V

    return-void
.end method


# virtual methods
.method copy()V
    .locals 4

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->toCopy:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    iget-object v1, v1, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->toCopy:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/messaging/pdu/PduComposer;->arraycopy([BII)V

    .line 1120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->toCopy:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    .line 1121
    return-void
.end method

.method mark()Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .locals 3

    .prologue
    .line 1127
    new-instance v0, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;

    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;-><init>(Lcom/motorola/messaging/pdu/PduComposer;Lcom/motorola/messaging/pdu/PduComposer$1;)V

    .line 1129
    .local v0, "m":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    iget v1, v1, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    # setter for: Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->c_pos:I
    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->access$402(Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;I)I

    .line 1130
    iget v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stackSize:I

    # setter for: Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->currentStackSize:I
    invoke-static {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->access$502(Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;I)I

    .line 1132
    return-object v0
.end method

.method newbuf()V
    .locals 3

    .prologue
    .line 1075
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->toCopy:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    if-eqz v1, :cond_0

    .line 1076
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1079
    :cond_0
    new-instance v0, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;-><init>(Lcom/motorola/messaging/pdu/PduComposer$1;)V

    .line 1081
    .local v0, "temp":Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    iget-object v1, v1, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v1, v0, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1082
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    iget v1, v1, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    iput v1, v0, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1084
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stack:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    iput-object v1, v0, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;->next:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    .line 1085
    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stack:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    .line 1087
    iget v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stackSize:I

    .line 1089
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, v1, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1090
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 1091
    return-void
.end method

.method pop()V
    .locals 4

    .prologue
    .line 1097
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    iget-object v0, v2, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1098
    .local v0, "currentMessage":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    iget v1, v2, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 1100
    .local v1, "currentPosition":I
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    iget-object v3, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stack:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    iget-object v3, v3, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v3, v2, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1101
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    iget-object v3, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stack:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    iput v3, v2, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 1103
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stack:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->toCopy:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    .line 1106
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stack:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    iget-object v2, v2, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;->next:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stack:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    .line 1107
    iget v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stackSize:I

    .line 1109
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->toCopy:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    iput-object v0, v2, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1110
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->toCopy:Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;

    iput v1, v2, Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1111
    return-void
.end method
