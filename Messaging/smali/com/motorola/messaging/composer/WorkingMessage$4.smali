.class Lcom/motorola/messaging/composer/WorkingMessage$4;
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

.field final synthetic val$msgText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1771
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage$4;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iput-object p2, p0, Lcom/motorola/messaging/composer/WorkingMessage$4;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    iput-object p3, p0, Lcom/motorola/messaging/composer/WorkingMessage$4;->val$msgText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$4;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$4;->val$conv:Lcom/motorola/messaging/conversation/Conversation;

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage$4;->val$msgText:Ljava/lang/String;

    # invokes: Lcom/motorola/messaging/composer/WorkingMessage;->sendSmsWorker(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1300(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V

    .line 1774
    return-void
.end method
