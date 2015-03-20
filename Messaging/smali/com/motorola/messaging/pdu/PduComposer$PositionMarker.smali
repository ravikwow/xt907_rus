.class Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionMarker"
.end annotation


# instance fields
.field private c_pos:I

.field private currentStackSize:I

.field final synthetic this$0:Lcom/motorola/messaging/pdu/PduComposer;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/pdu/PduComposer;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/pdu/PduComposer;Lcom/motorola/messaging/pdu/PduComposer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/pdu/PduComposer;
    .param p2, "x1"    # Lcom/motorola/messaging/pdu/PduComposer$1;

    .prologue
    .line 1041
    invoke-direct {p0, p1}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;-><init>(Lcom/motorola/messaging/pdu/PduComposer;)V

    return-void
.end method

.method static synthetic access$402(Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .param p1, "x1"    # I

    .prologue
    .line 1041
    iput p1, p0, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->c_pos:I

    return p1
.end method

.method static synthetic access$502(Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .param p1, "x1"    # I

    .prologue
    .line 1041
    iput p1, p0, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->currentStackSize:I

    return p1
.end method


# virtual methods
.method getLength()I
    .locals 2

    .prologue
    .line 1049
    iget v0, p0, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->currentStackSize:I

    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    # getter for: Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;
    invoke-static {v1}, Lcom/motorola/messaging/pdu/PduComposer;->access$100(Lcom/motorola/messaging/pdu/PduComposer;)Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-result-object v1

    iget v1, v1, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->stackSize:I

    if-eq v0, v1, :cond_0

    .line 1050
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid call to getLength()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->this$0:Lcom/motorola/messaging/pdu/PduComposer;

    iget v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    iget v1, p0, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->c_pos:I

    sub-int/2addr v0, v1

    return v0
.end method
