.class Lcom/motorola/messaging/activity/ComposeMessageActivity$14;
.super Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->addCallItem(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/os/Handler;I)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # I

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$14;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1912
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$14;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 1914
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->isMessagableNumber()Z

    move-result v1

    .line 1916
    .local v1, "hasValidNumber":Z
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    .line 1917
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$14;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getContactId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/motorola/messaging/contact/ContactUtils;->getPhones(Landroid/content/Context;J)Ljava/util/Set;

    move-result-object v2

    .line 1918
    .local v2, "phones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 1922
    .end local v2    # "phones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$14;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$14;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->hasOnlineAlbumRecipients()Z
    invoke-static {v6}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$3000(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mAddCallItemOption:Ljava/lang/Boolean;
    invoke-static {v5, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2902(Lcom/motorola/messaging/activity/ComposeMessageActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1923
    return-void

    .restart local v2    # "phones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    move v1, v4

    .line 1918
    goto :goto_0

    .end local v2    # "phones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    move v3, v4

    .line 1922
    goto :goto_1
.end method

.method protected onPostExecute()V
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$14;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1928
    return-void
.end method
