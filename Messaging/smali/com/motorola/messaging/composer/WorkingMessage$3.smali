.class Lcom/motorola/messaging/composer/WorkingMessage$3;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/composer/WorkingMessage;->send()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/composer/WorkingMessage;

.field final synthetic val$conv:Lcom/motorola/messaging/conversation/Conversation;

.field final synthetic val$mmsMessageUri:Landroid/net/Uri;

.field final synthetic val$persister:Lcom/motorola/messaging/pdu/PduPersister;

.field final synthetic val$priority:I

.field final synthetic val$sendReq:Lcom/motorola/messaging/pdu/SendReq;

.field final synthetic val$smilModel:Lcom/motorola/messaging/model/SmilModel;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPersister;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;I)V
    .locals 0

    .prologue
    .line 1762
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iput-object p2, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    iput-object p3, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$mmsMessageUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$persister:Lcom/motorola/messaging/pdu/PduPersister;

    iput-object p5, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$smilModel:Lcom/motorola/messaging/model/SmilModel;

    iput-object p6, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$sendReq:Lcom/motorola/messaging/pdu/SendReq;

    iput p7, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$priority:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$mmsMessageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$persister:Lcom/motorola/messaging/pdu/PduPersister;

    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$smilModel:Lcom/motorola/messaging/model/SmilModel;

    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$sendReq:Lcom/motorola/messaging/pdu/SendReq;

    iget v6, p0, Lcom/motorola/messaging/composer/WorkingMessage$3;->val$priority:I

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->sendMmsWorker(Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPersister;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;I)V
    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1200(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPersister;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;I)V

    .line 1765
    return-void
.end method
