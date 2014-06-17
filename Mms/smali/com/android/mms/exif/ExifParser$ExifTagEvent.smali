.class Lcom/android/mms/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcom/android/mms/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/android/mms/exif/ExifTag;Z)V
    .locals 0
    .param p1, "tag"    # Lcom/android/mms/exif/ExifTag;
    .param p2, "isRequireByUser"    # Z

    .prologue
    .line 905
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 906
    iput-object p1, p0, Lcom/android/mms/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/mms/exif/ExifTag;

    .line 907
    iput-boolean p2, p0, Lcom/android/mms/exif/ExifParser$ExifTagEvent;->isRequested:Z

    .line 908
    return-void
.end method
