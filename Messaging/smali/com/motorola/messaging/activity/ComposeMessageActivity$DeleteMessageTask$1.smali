.class Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->deletePendingSms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

.field final synthetic val$whereClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5253
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask$1;->val$whereClause:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5256
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask$1;->val$whereClause:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/messaging/transaction/MOSmsManager;->deletePendingUsingWhere(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5260
    :goto_0
    return-void

    .line 5257
    :catch_0
    move-exception v0

    .line 5258
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$DeleteMessageTask;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/motorola/messaging/provider/SqliteManager;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method
