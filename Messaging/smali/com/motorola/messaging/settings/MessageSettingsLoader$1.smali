.class Lcom/motorola/messaging/settings/MessageSettingsLoader$1;
.super Ljava/lang/Object;
.source "MessageSettingsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/settings/MessageSettingsLoader;->updateSettingsOnProvider(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/settings/MessageSettingsLoader;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/settings/MessageSettingsLoader;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/motorola/messaging/settings/MessageSettingsLoader$1;->this$0:Lcom/motorola/messaging/settings/MessageSettingsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 125
    const-string v2, "MessageSettingsLoader"

    const-string v3, "Update all settings on message provider!"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    sget-object v2, Lcom/motorola/contracts/messaging/Provider$MessageSettingsColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 128
    .local v1, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v2, "load_static_settings"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, "allSettingsUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/motorola/messaging/settings/MessageSettingsLoader$1;->this$0:Lcom/motorola/messaging/settings/MessageSettingsLoader;

    # getter for: Lcom/motorola/messaging/settings/MessageSettingsLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/messaging/settings/MessageSettingsLoader;->access$000(Lcom/motorola/messaging/settings/MessageSettingsLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    return-void
.end method
