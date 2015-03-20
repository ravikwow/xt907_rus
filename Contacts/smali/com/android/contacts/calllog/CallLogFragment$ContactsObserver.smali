.class Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;
.super Landroid/database/ContentObserver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 1

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    .line 638
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 639
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 642
    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->DBG:Z
    invoke-static {}, Lcom/android/contacts/calllog/CallLogFragment;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactsObserver onChange fragmentVisibilty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    iget-boolean v1, v1, Lcom/android/contacts/calllog/CallLogFragment;->fragmentVisibilty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isResumed() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->invalidateCache()V

    .line 646
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    iget-boolean v0, v0, Lcom/android/contacts/calllog/CallLogFragment;->fragmentVisibilty:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 647
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$ContactsObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$400(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 649
    :cond_1
    return-void
.end method
