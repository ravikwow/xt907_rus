.class public final Lcom/motorola/contacts/list/ContactMultiplePickerResultContentProvider$Resultable;
.super Ljava/lang/Object;
.source "ContactMultiplePickerResultContentProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/list/ContactMultiplePickerResultContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resultable"
.end annotation


# static fields
.field public static final CONTENT_ID_URI_BASE:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "content://com.motorola.contacts.list.ContactMultiplePickerResult/results"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/list/ContactMultiplePickerResultContentProvider$Resultable;->CONTENT_URI:Landroid/net/Uri;

    .line 72
    const-string v0, "content://com.motorola.contacts.list.ContactMultiplePickerResult/results/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/list/ContactMultiplePickerResultContentProvider$Resultable;->CONTENT_ID_URI_BASE:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method
