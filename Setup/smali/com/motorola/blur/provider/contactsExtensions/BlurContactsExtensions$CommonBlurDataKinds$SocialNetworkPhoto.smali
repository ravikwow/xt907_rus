.class public final Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$SocialNetworkPhoto;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"

# interfaces
.implements Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$BaseCommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocialNetworkPhoto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$SocialNetworkPhoto$PhotoUrlType;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/photo"

.field public static final DOWNLOAD_TIME:Ljava/lang/String; = "data_sync2"

.field public static final PHOTO:Ljava/lang/String; = "data15"

.field public static final PHOTO_URL_TYPE:Ljava/lang/String; = "data_sync4"

.field public static final REMOTE_URL:Ljava/lang/String; = "data_sync1"

.field public static final RETRY_COUNT:Ljava/lang/String; = "data_sync3"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    return-void
.end method
