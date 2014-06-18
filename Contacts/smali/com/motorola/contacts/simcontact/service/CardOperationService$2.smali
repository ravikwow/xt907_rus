.class Lcom/motorola/contacts/simcontact/service/CardOperationService$2;
.super Landroid/content/BroadcastReceiver;
.source "CardOperationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/simcontact/service/CardOperationService;->registerSIMCardStatusChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/simcontact/service/CardOperationService;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/simcontact/service/CardOperationService;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService$2;->this$0:Lcom/motorola/contacts/simcontact/service/CardOperationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService$2;->this$0:Lcom/motorola/contacts/simcontact/service/CardOperationService;

    # invokes: Lcom/motorola/contacts/simcontact/service/CardOperationService;->updateSimState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->access$100(Lcom/motorola/contacts/simcontact/service/CardOperationService;Landroid/content/Intent;)V

    .line 141
    :cond_0
    return-void
.end method
