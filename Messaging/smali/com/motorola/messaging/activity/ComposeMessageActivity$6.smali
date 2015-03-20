.class Lcom/motorola/messaging/activity/ComposeMessageActivity$6;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
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
    .line 543
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$6;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 547
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$6;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->getRecipients()Lcom/motorola/messaging/contact/ContactList;
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1200(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    .line 549
    .local v1, "contactList":Lcom/motorola/messaging/contact/ContactList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 551
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .line 552
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 554
    .local v2, "contactUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$6;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v4, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$6;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mInteractiveActionBar:Lcom/motorola/messaging/view/InteractiveActionBar;
    invoke-static {v4}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/view/InteractiveActionBar;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 561
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v2    # "contactUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 559
    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$6;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->viewMessageRecipients()V
    invoke-static {v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1400(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    goto :goto_0
.end method
