.class public Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;
.super Ljava/lang/Object;
.source "VCardPreviewUtils.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/vcard/VCardPreviewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryImplementer"
.end annotation


# instance fields
.field private mContactStruct:Lcom/android/vcard/VCardEntry;

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;)Lcom/android/vcard/VCardEntry;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;->mContactStruct:Lcom/android/vcard/VCardEntry;

    return-object v0
.end method


# virtual methods
.method public onEnd()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 0
    .param p1, "contactStruct"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;->mContactStruct:Lcom/android/vcard/VCardEntry;

    .line 72
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
