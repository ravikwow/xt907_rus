.class public final Lcom/motorola/blur/provider/Email;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/Email$Account;,
        Lcom/motorola/blur/provider/Email$Permissions;,
        Lcom/motorola/blur/provider/Email$Intents;,
        Lcom/motorola/blur/provider/Email$ControlSyncFlags;,
        Lcom/motorola/blur/provider/Email$ControlColumns;,
        Lcom/motorola/blur/provider/Email$SyncColumns;,
        Lcom/motorola/blur/provider/Email$SyncTypes;,
        Lcom/motorola/blur/provider/Email$InboxStatusColumns;,
        Lcom/motorola/blur/provider/Email$AccountStatusTypes;,
        Lcom/motorola/blur/provider/Email$AccountStatusColumns;,
        Lcom/motorola/blur/provider/Email$SystemFolderColumns;,
        Lcom/motorola/blur/provider/Email$FolderLockColumns;,
        Lcom/motorola/blur/provider/Email$FolderFlagsColumns;,
        Lcom/motorola/blur/provider/Email$MessageFlagsColumns;,
        Lcom/motorola/blur/provider/Email$FolderType;,
        Lcom/motorola/blur/provider/Email$NodeSyncStatus;,
        Lcom/motorola/blur/provider/Email$NodeFlags;,
        Lcom/motorola/blur/provider/Email$MessageStatus;,
        Lcom/motorola/blur/provider/Email$MessagePriority;,
        Lcom/motorola/blur/provider/Email$DownloadStatus;,
        Lcom/motorola/blur/provider/Email$FileOpenMode;,
        Lcom/motorola/blur/provider/Email$Message;,
        Lcom/motorola/blur/provider/Email$MessagePropertiesColumns;,
        Lcom/motorola/blur/provider/Email$AddressHistory;,
        Lcom/motorola/blur/provider/Email$ConversationColumns;,
        Lcom/motorola/blur/provider/Email$MessageColumns;,
        Lcom/motorola/blur/provider/Email$Folder;,
        Lcom/motorola/blur/provider/Email$FolderColumns;,
        Lcom/motorola/blur/provider/Email$NodeColumns;,
        Lcom/motorola/blur/provider/Email$BodyParts;,
        Lcom/motorola/blur/provider/Email$BodyPartColumns;,
        Lcom/motorola/blur/provider/Email$SortOrder;,
        Lcom/motorola/blur/provider/Email$MimeTypes;,
        Lcom/motorola/blur/provider/Email$ContentUri;,
        Lcom/motorola/blur/provider/Email$TableAlias;,
        Lcom/motorola/blur/provider/Email$TableNames;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.blur.service.email.engine.EmailProvider"

.field public static final PREFERENCES_PATH:Ljava/lang/String; = "preferences"

.field public static final PREFERENCES_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/preferences"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/Email;->PREFERENCES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1389
    return-void
.end method
