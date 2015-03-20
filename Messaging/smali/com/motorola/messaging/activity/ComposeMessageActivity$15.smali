.class Lcom/motorola/messaging/activity/ComposeMessageActivity$15;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$15;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1992
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$15;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/contact/Contact;

    .line 1993
    .local v1, "contact":Lcom/motorola/messaging/contact/Contact;
    const/4 v0, 0x0

    .line 1994
    .local v0, "callUri":Landroid/net/Uri;
    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->isMessagableNumber()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1995
    const-string v4, "tel:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2002
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2003
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$15;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2004
    return-void

    .line 1999
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$15;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->getContactId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/motorola/messaging/contact/ContactUtils;->getPhones(Landroid/content/Context;J)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2000
    .local v3, "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "tel:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
