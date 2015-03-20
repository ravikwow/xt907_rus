.class Lcom/motorola/messaging/composer/WorkingMessage$7;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/composer/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/composer/WorkingMessage;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/composer/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2093
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage$7;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    iput-object p2, p0, Lcom/motorola/messaging/composer/WorkingMessage$7;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/motorola/messaging/composer/WorkingMessage$7;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/messaging/composer/WorkingMessage$7;->val$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage$7;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1800(Lcom/motorola/messaging/composer/WorkingMessage;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage$7;->this$0:Lcom/motorola/messaging/composer/WorkingMessage;

    # getter for: Lcom/motorola/messaging/composer/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->access$1900(Lcom/motorola/messaging/composer/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage$7;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage$7;->val$selection:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage$7;->val$selectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2096
    return-void
.end method
