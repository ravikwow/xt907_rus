.class Lcom/motorola/messaging/activity/ComposeMessageActivity$9;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->protectMessage(Lcom/motorola/messaging/composer/MessageItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$protectUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$9;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$9;->val$protectUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$9;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1155
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$9;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$9;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$9;->val$protectUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$9;->val$values:Landroid/content/ContentValues;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1157
    return-void
.end method
