.class Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;
.super Landroid/os/Handler;
.source "ExportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/ExportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/ExportVCardActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/ExportVCardActivity;Lcom/android/contacts/vcard/ExportVCardActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/vcard/ExportVCardActivity;
    .param p2, "x1"    # Lcom/android/contacts/vcard/ExportVCardActivity$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;-><init>(Lcom/android/contacts/vcard/ExportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f0c00f1

    const v2, 0x7f070014

    .line 62
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "VCardExport"

    const-string v1, "Message returned from vCard server contains error code."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$002(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 97
    :goto_0
    return-void

    .line 71
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    const-string v0, "VCardExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 74
    const-string v0, "VCardExport"

    const-string v1, "Message returned from vCard server doesn\'t contain valid path"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$002(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$102(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$100(Lcom/android/contacts/vcard/ExportVCardActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    const-string v0, "VCardExport"

    const-string v1, "Destination file name coming from vCard service is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/contacts/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/vcard/ExportVCardActivity;->access$002(Lcom/android/contacts/vcard/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportVCardActivity$IncomingHandler;->this$0:Lcom/android/contacts/vcard/ExportVCardActivity;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
