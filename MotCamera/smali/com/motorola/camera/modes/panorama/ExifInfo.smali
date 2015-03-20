.class public Lcom/motorola/camera/modes/panorama/ExifInfo;
.super Ljava/lang/Object;
.source "ExifInfo.java"


# instance fields
.field public final mDateTimeTaken:J

.field public final mLocation:Landroid/location/Location;

.field public final mOrientation:I

.field public final mStorageLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/Location;IJ)V
    .locals 0
    .param p1, "storageLocation"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "orientation"    # I
    .param p4, "dateTimeTaken"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/motorola/camera/modes/panorama/ExifInfo;->mStorageLocation:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/motorola/camera/modes/panorama/ExifInfo;->mLocation:Landroid/location/Location;

    .line 21
    iput p3, p0, Lcom/motorola/camera/modes/panorama/ExifInfo;->mOrientation:I

    .line 22
    iput-wide p4, p0, Lcom/motorola/camera/modes/panorama/ExifInfo;->mDateTimeTaken:J

    .line 23
    return-void
.end method
