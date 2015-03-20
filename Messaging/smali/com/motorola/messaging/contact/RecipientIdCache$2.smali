.class Lcom/motorola/messaging/contact/RecipientIdCache$2;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/contact/RecipientIdCache;->updateCanonicalAddressInDb(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/contact/RecipientIdCache;

.field final synthetic val$buf:Ljava/lang/StringBuilder;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/contact/RecipientIdCache;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/motorola/messaging/contact/RecipientIdCache$2;->this$0:Lcom/motorola/messaging/contact/RecipientIdCache;

    iput-object p2, p0, Lcom/motorola/messaging/contact/RecipientIdCache$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/motorola/messaging/contact/RecipientIdCache$2;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/motorola/messaging/contact/RecipientIdCache$2;->val$buf:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 175
    iget-object v0, p0, Lcom/motorola/messaging/contact/RecipientIdCache$2;->this$0:Lcom/motorola/messaging/contact/RecipientIdCache;

    # getter for: Lcom/motorola/messaging/contact/RecipientIdCache;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/contact/RecipientIdCache;->access$000(Lcom/motorola/messaging/contact/RecipientIdCache;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/contact/RecipientIdCache$2;->this$0:Lcom/motorola/messaging/contact/RecipientIdCache;

    # getter for: Lcom/motorola/messaging/contact/RecipientIdCache;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/messaging/contact/RecipientIdCache;->access$000(Lcom/motorola/messaging/contact/RecipientIdCache;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/contact/RecipientIdCache$2;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/messaging/contact/RecipientIdCache$2;->val$values:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/motorola/messaging/contact/RecipientIdCache$2;->val$buf:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    return-void
.end method
