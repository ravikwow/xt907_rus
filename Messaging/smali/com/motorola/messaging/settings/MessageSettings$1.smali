.class final Lcom/motorola/messaging/settings/MessageSettings$1;
.super Ljava/lang/Object;
.source "MessageSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/settings/MessageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 230
    # getter for: Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->access$100()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.contextual.location.ils.IlsShareLocation"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/motorola/messaging/settings/MessageSettings;->mIsLocationAppAvailable:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/motorola/messaging/settings/MessageSettings;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "motorola.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    # getter for: Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/motorola/messaging/util/MessageUtils;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/motorola/messaging/settings/MessageSettings;->mIsNamecardSupported:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/motorola/messaging/settings/MessageSettings;->access$202(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 241
    # getter for: Lcom/motorola/messaging/settings/MessageSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->access$100()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "motorola.intent.ACTION_MULTIPLE_PICK"

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/motorola/messaging/settings/MessageSettings;->mIsContactPickerSupported:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/motorola/messaging/settings/MessageSettings;->access$302(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 243
    return-void
.end method
