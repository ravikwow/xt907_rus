.class Lcom/motorola/contacts/simcontact/service/CardOperationService$1;
.super Landroid/os/Handler;
.source "CardOperationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/simcontact/service/CardOperationService;
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
    .line 124
    iput-object p1, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService$1;->this$0:Lcom/motorola/contacts/simcontact/service/CardOperationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    # getter for: Lcom/motorola/contacts/simcontact/service/CardOperationService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/contacts/simcontact/service/CardOperationService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Toast..., prompt end user wait while clean up DB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/service/CardOperationService$1;->this$0:Lcom/motorola/contacts/simcontact/service/CardOperationService;

    const v1, 0x7f0b0232

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method
