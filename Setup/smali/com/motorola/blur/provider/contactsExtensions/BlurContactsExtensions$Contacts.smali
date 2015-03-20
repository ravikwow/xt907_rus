.class public Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$Contacts;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$Contacts$ContactsFilter;
    }
.end annotation


# static fields
.field public static final COMMUNICATION_HISTORY_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1698
    const-string v0, "content://com.motorola.blur.contacts.extensions/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1701
    const-string v0, "content://com.motorola.blur.contacts.extensions/contacts/communication_history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$Contacts;->COMMUNICATION_HISTORY_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1691
    return-void
.end method
