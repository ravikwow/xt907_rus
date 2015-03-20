.class Lcom/motorola/blur/fsm/SetupFSM$debugOutputStream;
.super Ljava/io/OutputStream;
.source "SetupFSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/fsm/SetupFSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "debugOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/fsm/SetupFSM;


# direct methods
.method private constructor <init>(Lcom/motorola/blur/fsm/SetupFSM;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/motorola/blur/fsm/SetupFSM$debugOutputStream;->this$0:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/fsm/SetupFSM;Lcom/motorola/blur/fsm/SetupFSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/fsm/SetupFSM;
    .param p2, "x1"    # Lcom/motorola/blur/fsm/SetupFSM$1;

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Lcom/motorola/blur/fsm/SetupFSM$debugOutputStream;-><init>(Lcom/motorola/blur/fsm/SetupFSM;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1145
    # getter for: Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/blur/fsm/SetupFSM;->access$500()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1146
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1150
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/blur/fsm/SetupFSM$debugOutputStream;->write([BII)V

    .line 1151
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1156
    array-length v1, p1

    if-lez v1, :cond_0

    .line 1157
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1159
    # getter for: Lcom/motorola/blur/fsm/SetupFSM;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/blur/fsm/SetupFSM;->access$500()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1162
    .end local v0    # "output":Ljava/lang/String;
    :cond_0
    return-void
.end method
