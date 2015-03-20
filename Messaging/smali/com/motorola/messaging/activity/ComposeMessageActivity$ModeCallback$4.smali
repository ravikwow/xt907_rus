.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

.field final synthetic val$msgItem:Lcom/motorola/messaging/composer/MessageItem;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0

    .prologue
    .line 6747
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 6750
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v5}, Lcom/motorola/messaging/composer/MessageItem;->getBody()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6751
    .local v0, "msgBody":Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v5

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportNationalTable()Z

    move-result v6

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getIfSupportLockingShiftTable()Z

    move-result v7

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v5, v6, v7, v8}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)[I

    move-result-object v1

    .line 6754
    .local v1, "params":[I
    const/4 v5, 0x0

    aget v5, v1, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 6756
    const v2, 0x7f0b0026

    .line 6769
    .local v2, "resId":I
    :goto_0
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iget-object v5, v5, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    new-instance v6, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4$1;

    invoke-direct {v6, p0, v2}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4$1;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;I)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6773
    return-void

    .line 6758
    .end local v2    # "resId":I
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 6759
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "type"

    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v6}, Lcom/motorola/messaging/composer/MessageItem;->getFolder()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6760
    const-string v5, "address"

    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v6}, Lcom/motorola/messaging/composer/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6761
    const-string v5, "body"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6762
    const-string v5, "date"

    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v6}, Lcom/motorola/messaging/composer/MessageItem;->getRawTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6763
    const-string v6, "service_center"

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6764
    const-string v5, "priority"

    iget-object v6, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->val$msgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v6}, Lcom/motorola/messaging/composer/MessageItem;->getRawPriority()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6766
    iget-object v5, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iget-object v5, v5, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2300(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Landroid/content/ContentResolver;

    move-result-object v5

    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->SIM_CARD_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$8000()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 6767
    .local v3, "uSim":Landroid/net/Uri;
    if-eqz v3, :cond_1

    const v2, 0x7f0b0024

    .restart local v2    # "resId":I
    :goto_1
    goto :goto_0

    .end local v2    # "resId":I
    :cond_1
    const v2, 0x7f0b0025

    goto :goto_1
.end method
