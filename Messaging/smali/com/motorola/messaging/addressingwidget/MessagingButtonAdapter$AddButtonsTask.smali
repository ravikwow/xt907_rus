.class Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "MessagingButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddButtonsTask"
.end annotation


# instance fields
.field private mAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/contact/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSuggested:Z

.field private mNotifyCapacityExceeded:Z

.field private mNotifyContentChanged:Z

.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;)V
    .locals 2

    .prologue
    .line 511
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    .line 512
    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->access$000(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mContactList:Ljava/util/List;

    .line 514
    return-void
.end method

.method public constructor <init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Lcom/motorola/messaging/contact/ContactList;)V
    .locals 0
    .param p2, "contactList"    # Lcom/motorola/messaging/contact/ContactList;

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;)V

    .line 498
    iput-object p2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mContactList:Ljava/util/List;

    .line 499
    return-void
.end method

.method public constructor <init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Ljava/util/List;Z)V
    .locals 0
    .param p3, "isSuggested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Z)V

    .line 503
    iput-object p2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mAddressList:Ljava/util/List;

    .line 504
    return-void
.end method

.method private constructor <init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Z)V
    .locals 0
    .param p2, "isSuggested"    # Z

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;)V

    .line 508
    iput-boolean p2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mIsSuggested:Z

    .line 509
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 519
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mAddressList:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 520
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mAddressList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 521
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->removeNetworkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 524
    invoke-static {v0, v5}, Lcom/motorola/messaging/contact/Contact;->getCached(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v1

    .line 525
    .local v1, "c":Lcom/motorola/messaging/contact/Contact;
    if-nez v1, :cond_1

    .line 526
    invoke-static {v0, v5}, Lcom/motorola/messaging/contact/Contact;->createContact(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v1

    .line 528
    :cond_1
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    iget-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mIsSuggested:Z

    # invokes: Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->addButton(Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)Z
    invoke-static {v3, v1, v0, v4}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->access$100(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 529
    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 530
    iput-boolean v5, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mNotifyCapacityExceeded:Z

    .line 538
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "c":Lcom/motorola/messaging/contact/Contact;
    :cond_2
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 559
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return-void

    .line 534
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "c":Lcom/motorola/messaging/contact/Contact;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iput-boolean v5, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mNotifyContentChanged:Z

    goto :goto_0

    .line 539
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "c":Lcom/motorola/messaging/contact/Contact;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mContactList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 540
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mContactList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/contact/Contact;

    .line 541
    .restart local v1    # "c":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 542
    .restart local v0    # "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->removeNetworkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 544
    invoke-virtual {v1, v0}, Lcom/motorola/messaging/contact/Contact;->setAddress(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->invalidate()V

    .line 547
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    const/4 v4, 0x0

    # invokes: Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->addButton(Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)Z
    invoke-static {v3, v1, v0, v4}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->access$100(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_8

    .line 548
    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->isValid()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 549
    iput-boolean v5, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mNotifyCapacityExceeded:Z

    .line 557
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "c":Lcom/motorola/messaging/contact/Contact;
    :cond_7
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 553
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "c":Lcom/motorola/messaging/contact/Contact;
    :cond_8
    iput-boolean v5, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mNotifyContentChanged:Z

    goto :goto_2
.end method

.method protected onPostExecute()V
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mNotifyContentChanged:Z

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 567
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->mNotifyCapacityExceeded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacityListener:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->access$200(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$AddButtonsTask;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->mCapacityListener:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->access$200(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;)Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$onCapacityExceededListener;->onCapacityExceeded()V

    .line 570
    :cond_1
    return-void
.end method
