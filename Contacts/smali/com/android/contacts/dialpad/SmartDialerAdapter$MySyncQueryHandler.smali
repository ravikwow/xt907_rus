.class Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;
.super Landroid/os/Handler;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/SmartDialerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySyncQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .line 843
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 844
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 848
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 854
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 857
    :goto_0
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 858
    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    const-string v1, "notify main UI thread"

    # invokes: Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$500(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$1200(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 861
    :cond_1
    return-void

    .line 850
    :pswitch_0
    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveContactsMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$500(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 851
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/contacts/dialpad/SmartDialerAdapter;->queryContactDetail(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$1100(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
    .end packed-switch
.end method
