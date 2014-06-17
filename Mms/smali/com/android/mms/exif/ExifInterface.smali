.class public Lcom/android/mms/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/android/mms/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 74
    const/16 v0, 0x100

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 76
    const/16 v0, 0x101

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 78
    const/16 v0, 0x102

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 80
    const/16 v0, 0x103

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 82
    const/16 v0, 0x106

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 84
    const/16 v0, 0x10e

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 86
    const/16 v0, 0x10f

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MAKE:I

    .line 88
    const/16 v0, 0x110

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MODEL:I

    .line 90
    const/16 v0, 0x111

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 92
    const/16 v0, 0x112

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 94
    const/16 v0, 0x115

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 96
    const/16 v0, 0x116

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 98
    const/16 v0, 0x117

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 100
    const/16 v0, 0x11a

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 102
    const/16 v0, 0x11b

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 104
    const/16 v0, 0x11c

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 106
    const/16 v0, 0x128

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 108
    const/16 v0, 0x12d

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 110
    const/16 v0, 0x131

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 112
    const/16 v0, 0x132

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 114
    const/16 v0, 0x13b

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ARTIST:I

    .line 116
    const/16 v0, 0x13e

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 118
    const/16 v0, 0x13f

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 120
    const/16 v0, 0x211

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 122
    const/16 v0, 0x212

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 124
    const/16 v0, 0x213

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 126
    const/16 v0, 0x214

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 128
    const/16 v0, -0x7d68

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 130
    const/16 v0, -0x7897

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 132
    const/16 v0, -0x77db

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 135
    const/16 v0, 0x201

    invoke-static {v4, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 137
    const/16 v0, 0x202

    invoke-static {v4, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 140
    const/16 v0, -0x7d66

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 142
    const/16 v0, -0x7d63

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 144
    const/16 v0, -0x77de

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 146
    const/16 v0, -0x77dc

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 148
    const/16 v0, -0x77d9

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 150
    const/16 v0, -0x77d8

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_OECF:I

    .line 152
    const/16 v0, -0x7000

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 154
    const/16 v0, -0x6ffd

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 156
    const/16 v0, -0x6ffc

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 158
    const/16 v0, -0x6eff

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 160
    const/16 v0, -0x6efe

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 162
    const/16 v0, -0x6dff

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 164
    const/16 v0, -0x6dfe

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 166
    const/16 v0, -0x6dfd

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 168
    const/16 v0, -0x6dfc

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 170
    const/16 v0, -0x6dfb

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 172
    const/16 v0, -0x6dfa

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 174
    const/16 v0, -0x6df9

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 176
    const/16 v0, -0x6df8

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 178
    const/16 v0, -0x6df7

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH:I

    .line 180
    const/16 v0, -0x6df6

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 182
    const/16 v0, -0x6dec

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 184
    const/16 v0, -0x6d84

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 186
    const/16 v0, -0x6d7a

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 188
    const/16 v0, -0x6d70

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 190
    const/16 v0, -0x6d6f

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 192
    const/16 v0, -0x6d6e

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 194
    const/16 v0, -0x6000

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 196
    const/16 v0, -0x5fff

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 198
    const/16 v0, -0x5ffe

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 200
    const/16 v0, -0x5ffd

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 202
    const/16 v0, -0x5ffc

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 204
    const/16 v0, -0x5ffb

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 206
    const/16 v0, -0x5df5

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 208
    const/16 v0, -0x5df4

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 210
    const/16 v0, -0x5df2

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 212
    const/16 v0, -0x5df1

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 214
    const/16 v0, -0x5df0

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 216
    const/16 v0, -0x5dec

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 218
    const/16 v0, -0x5deb

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 220
    const/16 v0, -0x5de9

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 222
    const/16 v0, -0x5d00

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 224
    const/16 v0, -0x5cff

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 226
    const/16 v0, -0x5cfe

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 228
    const/16 v0, -0x5bff

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 230
    const/16 v0, -0x5bfe

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 232
    const/16 v0, -0x5bfd

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 234
    const/16 v0, -0x5bfc

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 236
    const/16 v0, -0x5bfb

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 238
    const/16 v0, -0x5bfa

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 240
    const/16 v0, -0x5bf9

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 242
    const/16 v0, -0x5bf8

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_CONTRAST:I

    .line 244
    const/16 v0, -0x5bf7

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SATURATION:I

    .line 246
    const/16 v0, -0x5bf6

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 248
    const/16 v0, -0x5bf5

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 250
    const/16 v0, -0x5bf4

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 252
    const/16 v0, -0x5be0

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 255
    invoke-static {v2, v3}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 257
    invoke-static {v2, v4}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 259
    invoke-static {v2, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 261
    invoke-static {v2, v5}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 263
    invoke-static {v2, v2}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 265
    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 267
    const/4 v0, 0x6

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 269
    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 271
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 273
    const/16 v0, 0x9

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 275
    const/16 v0, 0xa

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 277
    const/16 v0, 0xb

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 279
    const/16 v0, 0xc

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 281
    const/16 v0, 0xd

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 283
    const/16 v0, 0xe

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 285
    const/16 v0, 0xf

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 287
    const/16 v0, 0x10

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 289
    const/16 v0, 0x11

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 291
    const/16 v0, 0x12

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 293
    const/16 v0, 0x13

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 295
    const/16 v0, 0x14

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 297
    const/16 v0, 0x15

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    .line 299
    const/16 v0, 0x16

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    .line 301
    const/16 v0, 0x17

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 303
    const/16 v0, 0x18

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 305
    const/16 v0, 0x19

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 307
    const/16 v0, 0x1a

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 309
    const/16 v0, 0x1b

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 311
    const/16 v0, 0x1c

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 313
    const/16 v0, 0x1d

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 315
    const/16 v0, 0x1e

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 318
    invoke-static {v5, v4}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 325
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 327
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 339
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/android/mms/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 713
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 710
    new-instance v0, Lcom/android/mms/exif/ExifData;

    sget-object v1, Lcom/android/mms/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/mms/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    .line 1949
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 1950
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 1951
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 2062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 714
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 715
    return-void
.end method

.method public static defineTag(IS)I
    .locals 2
    .param p0, "ifdId"    # I
    .param p1, "tagId"    # S

    .prologue
    .line 348
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2347
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8
    .param p0, "allowedIfds"    # [I

    .prologue
    .line 2383
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_2

    .line 2384
    :cond_0
    const/4 v1, 0x0

    .line 2396
    :cond_1
    return v1

    .line 2386
    :cond_2
    const/4 v1, 0x0

    .line 2387
    .local v1, "flags":I
    invoke-static {}, Lcom/android/mms/exif/IfdData;->getIfds()[I

    move-result-object v4

    .line 2388
    .local v4, "ifds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v2, v7, :cond_1

    .line 2389
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_3

    aget v5, v0, v3

    .line 2390
    .local v5, "j":I
    aget v7, v4, v2

    if-ne v7, v5, :cond_4

    .line 2391
    const/4 v7, 0x1

    shl-int/2addr v7, v2

    or-int/2addr v1, v7

    .line 2388
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2389
    .restart local v5    # "j":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1
    .param p0, "orientation"    # S

    .prologue
    const/4 v0, 0x0

    .line 1883
    packed-switch p0, :pswitch_data_0

    .line 1893
    :goto_0
    :pswitch_0
    return v0

    .line 1887
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 1889
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 1891
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 1883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getTrueIfd(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 363
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 356
    int-to-short v0, p0

    return v0
.end method

.method private initTagInfo()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000

    const/high16 v7, 0x70000

    const/high16 v6, 0x50000

    const/high16 v5, 0x30000

    const/high16 v4, 0x20000

    .line 2080
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 2083
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2084
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_MAKE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2086
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2088
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2090
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2092
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2094
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2096
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_ORIENTATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2098
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2100
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2102
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2104
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2106
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_X_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2108
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2110
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2112
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2114
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2116
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2118
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int v3, v0, v5

    or-int/lit16 v3, v3, 0x300

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2120
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_POINT:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2122
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2124
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2126
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2128
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2130
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2132
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_MAKE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2134
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_MODEL:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2136
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SOFTWARE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2138
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_ARTIST:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2140
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_COPYRIGHT:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2142
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2144
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2147
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 2150
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2151
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2153
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2156
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 2159
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2160
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_VERSION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2162
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2164
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2166
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2168
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2170
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2172
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2174
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_MAKER_NOTE:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2176
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_USER_COMMENT:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2178
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2180
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2182
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2184
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2186
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2188
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2190
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2192
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2194
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_F_NUMBER:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2196
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2198
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2200
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2202
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_OECF:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2204
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2206
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2208
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2210
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2212
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2214
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2216
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_METERING_MODE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2218
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2220
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2222
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2224
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2226
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2228
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2230
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2232
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2234
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2236
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2238
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2240
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SENSING_METHOD:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FILE_SOURCE:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2244
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_TYPE:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2246
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_CFA_PATTERN:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2250
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2252
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2254
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2256
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2258
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2260
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2262
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_CONTRAST:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2264
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SATURATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2266
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SHARPNESS:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2268
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2270
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2272
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 2278
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2279
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v3, 0x10000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/high16 v3, 0x10000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_STATUS:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DOP:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2307
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2309
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2313
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2317
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2321
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2323
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2325
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2327
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2329
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2331
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2335
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    or-int/2addr v0, v5

    or-int/lit8 v0, v0, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2338
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 2341
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2342
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    or-int/2addr v0, v4

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    return-void

    .line 2080
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5
    .param p0, "info"    # I
    .param p1, "ifd"    # I

    .prologue
    const/4 v3, 0x1

    .line 2372
    invoke-static {}, Lcom/android/mms/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2373
    .local v2, "ifds":[I
    invoke-static {p0}, Lcom/android/mms/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 2374
    .local v1, "ifdFlags":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 2375
    aget v4, v2, v0

    if-ne p1, v4, :cond_0

    shr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    .line 2379
    :goto_1
    return v3

    .line 2374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2379
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static isOffsetTag(S)Z
    .locals 2
    .param p0, "tag"    # S

    .prologue
    .line 1483
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDefinedTagDefaultIfd(I)I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1450
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1451
    const/4 v1, -0x1

    .line 1453
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueIfd(I)I

    move-result v1

    goto :goto_0
.end method

.method public getTag(II)Lcom/android/mms/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1177
    invoke-static {p2}, Lcom/android/mms/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    .line 1180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/mms/exif/ExifData;->getTag(SI)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2066
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2067
    invoke-direct {p0}, Lcom/android/mms/exif/ExifInterface;->initTagInfo()V

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1276
    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1277
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1265
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    .line 1266
    .local v0, "l":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1267
    :cond_0
    const/4 v1, 0x0

    .line 1269
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public getTagIntValues(II)[I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    .line 1342
    .local v0, "t":Lcom/android/mms/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1343
    const/4 v1, 0x0

    .line 1345
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    if-nez p1, :cond_0

    .line 737
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 739
    :cond_0
    const/4 v0, 0x0

    .line 741
    .local v0, "d":Lcom/android/mms/exif/ExifData;
    :try_start_0
    new-instance v2, Lcom/android/mms/exif/ExifReader;

    invoke-direct {v2, p0}, Lcom/android/mms/exif/ExifReader;-><init>(Lcom/android/mms/exif/ExifInterface;)V

    invoke-virtual {v2, p1}, Lcom/android/mms/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/mms/exif/ExifData;
    :try_end_0
    .catch Lcom/android/mms/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 745
    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    .line 746
    return-void

    .line 742
    :catch_0
    move-exception v1

    .line 743
    .local v1, "e":Lcom/android/mms/exif/ExifInvalidFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exif format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
