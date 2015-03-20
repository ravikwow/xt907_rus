.class Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "MessagingButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->updateButton(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mContact:Lcom/motorola/messaging/contact/Contact;

.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

.field final synthetic val$finalButton:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

.field final synthetic val$finalNewAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;Landroid/os/Handler;ILjava/lang/String;Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # I

    .prologue
    .line 381
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    iput-object p4, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->val$finalNewAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->val$finalButton:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 386
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->val$finalNewAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/messaging/contact/Contact;->getCached(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->mContact:Lcom/motorola/messaging/contact/Contact;

    .line 387
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->mContact:Lcom/motorola/messaging/contact/Contact;

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->val$finalNewAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/messaging/contact/Contact;->createContact(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->mContact:Lcom/motorola/messaging/contact/Contact;

    .line 390
    :cond_0
    return-void
.end method

.method protected onPostExecute()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->val$finalButton:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->update(Lcom/motorola/messaging/contact/Contact;)V

    .line 395
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 396
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$1;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 397
    return-void
.end method
