.class Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;
.super Landroid/os/Handler;
.source "CardObserverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/simcontact/service/CardObserverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/simcontact/service/CardObserverService;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/simcontact/service/CardObserverService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;->this$0:Lcom/motorola/contacts/simcontact/service/CardObserverService;

    .line 64
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 65
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    :goto_0
    return-void

    .line 71
    :pswitch_0
    # getter for: Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start scheduleSyncWorkFromContactToCard work!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;->this$0:Lcom/motorola/contacts/simcontact/service/CardObserverService;

    # getter for: Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->access$100(Lcom/motorola/contacts/simcontact/service/CardObserverService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->requestSyncFromContactToCard(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    :pswitch_1
    # getter for: Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start scheduleSyncWorkFromCardToContact work!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;->this$0:Lcom/motorola/contacts/simcontact/service/CardObserverService;

    # getter for: Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->access$100(Lcom/motorola/contacts/simcontact/service/CardObserverService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkIfSimCardIsFull(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService$SyncWorkHandler;->this$0:Lcom/motorola/contacts/simcontact/service/CardObserverService;

    # getter for: Lcom/motorola/contacts/simcontact/service/CardObserverService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->access$100(Lcom/motorola/contacts/simcontact/service/CardObserverService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->requestSyncFromCardToContact(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
