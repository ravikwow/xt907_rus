.class Lcom/motorola/contacts/simcontact/service/CardObserverService$2;
.super Landroid/database/ContentObserver;
.source "CardObserverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/simcontact/service/CardObserverService;->registerContactContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/simcontact/service/CardObserverService;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/simcontact/service/CardObserverService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService$2;->this$0:Lcom/motorola/contacts/simcontact/service/CardObserverService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 124
    # getter for: Lcom/motorola/contacts/simcontact/service/CardObserverService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChange: Contact db is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardObserverService$2;->this$0:Lcom/motorola/contacts/simcontact/service/CardObserverService;

    # invokes: Lcom/motorola/contacts/simcontact/service/CardObserverService;->scheduleSyncWorkFromContactToCard()V
    invoke-static {v0}, Lcom/motorola/contacts/simcontact/service/CardObserverService;->access$300(Lcom/motorola/contacts/simcontact/service/CardObserverService;)V

    .line 126
    return-void
.end method
