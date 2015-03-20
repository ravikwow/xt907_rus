.class public interface abstract Lcom/motorola/blur/provider/Email$ContentUri;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentUri"
.end annotation


# static fields
.field public static final ACCOUNT_STATUS:Landroid/net/Uri;

.field public static final ADDRESS_HISTORY:Landroid/net/Uri;

.field public static final AS_NEED_DOWNLOAD_LIST:Landroid/net/Uri;

.field public static final BODYPARTS:Landroid/net/Uri;

.field public static final BODYPARTS_CACHE:Landroid/net/Uri;

.field public static final BODYPARTS_MESSAGES:Landroid/net/Uri;

.field public static final CONVERSATIONS:Landroid/net/Uri;

.field public static final FOLDERS:Landroid/net/Uri;

.field public static final FOLDERS_NO_NOTIFY:Landroid/net/Uri;

.field public static final FOLDER_FLAGS:Landroid/net/Uri;

.field public static final FOLDER_LOCK:Landroid/net/Uri;

.field public static final INBOX_STATUS:Landroid/net/Uri;

.field public static final MESSAGES:Landroid/net/Uri;

.field public static final MESSAGES_NO_NOTIFY:Landroid/net/Uri;

.field public static final MESSAGE_DUPLICATE:Landroid/net/Uri;

.field public static final MESSAGE_FLAGS:Landroid/net/Uri;

.field public static final MESSAGE_PROPERTIES:Landroid/net/Uri;

.field public static final NEW_MESSAGES:Landroid/net/Uri;

.field public static final NOT_DOWNLOAD_ATTACHMENT:Landroid/net/Uri;

.field public static final SYNC:Landroid/net/Uri;

.field public static final SYSTEM_FOLDERS_CREATE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/folders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->FOLDERS:Landroid/net/Uri;

    .line 137
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/folders/no_notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->FOLDERS_NO_NOTIFY:Landroid/net/Uri;

    .line 141
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->MESSAGES:Landroid/net/Uri;

    .line 145
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->CONVERSATIONS:Landroid/net/Uri;

    .line 152
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/messages/no_notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->MESSAGES_NO_NOTIFY:Landroid/net/Uri;

    .line 156
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/bodyparts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->BODYPARTS:Landroid/net/Uri;

    .line 160
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/account_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->ACCOUNT_STATUS:Landroid/net/Uri;

    .line 164
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/inbox_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->INBOX_STATUS:Landroid/net/Uri;

    .line 168
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/sync"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->SYNC:Landroid/net/Uri;

    .line 172
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/address_history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->ADDRESS_HISTORY:Landroid/net/Uri;

    .line 176
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/messages/new"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->NEW_MESSAGES:Landroid/net/Uri;

    .line 179
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/messages/flags"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->MESSAGE_FLAGS:Landroid/net/Uri;

    .line 182
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/folders/flags"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->FOLDER_FLAGS:Landroid/net/Uri;

    .line 192
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/folders/lockFolder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->FOLDER_LOCK:Landroid/net/Uri;

    .line 200
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/folders/system/create"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->SYSTEM_FOLDERS_CREATE:Landroid/net/Uri;

    .line 208
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/messages/duplicate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->MESSAGE_DUPLICATE:Landroid/net/Uri;

    .line 216
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/bodyparts/not_downloaded"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->NOT_DOWNLOAD_ATTACHMENT:Landroid/net/Uri;

    .line 223
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/bodyparts/bodyparts_messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->BODYPARTS_MESSAGES:Landroid/net/Uri;

    .line 230
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/bodyparts/as_need_download_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->AS_NEED_DOWNLOAD_LIST:Landroid/net/Uri;

    .line 236
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/message_properties"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->MESSAGE_PROPERTIES:Landroid/net/Uri;

    .line 244
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/bodyparts/cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->BODYPARTS_CACHE:Landroid/net/Uri;

    return-void
.end method
