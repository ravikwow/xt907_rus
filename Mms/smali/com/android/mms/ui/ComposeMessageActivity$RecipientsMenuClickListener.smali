.class final Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecipientsMenuClickListener"
.end annotation


# instance fields
.field private final mRecipient:Lcom/android/mms/data/Contact;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0
    .param p2, "recipient"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 976
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    .line 977
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 981
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 998
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 984
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 985
    .local v0, "contactUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 986
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 987
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 991
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    # setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2702(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 993
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x6c

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 981
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
