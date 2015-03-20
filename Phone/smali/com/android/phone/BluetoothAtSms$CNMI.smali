.class public Lcom/android/phone/BluetoothAtSms$CNMI;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CNMI"
.end annotation


# instance fields
.field public bfr:I

.field public bm:I

.field public ds:I

.field public mode:I

.field public mt:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "imode"    # I
    .param p2, "imt"    # I
    .param p3, "ibm"    # I
    .param p4, "ids"    # I
    .param p5, "ibfr"    # I

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput p1, p0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    .line 916
    iput p2, p0, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    .line 917
    iput p3, p0, Lcom/android/phone/BluetoothAtSms$CNMI;->bm:I

    .line 918
    iput p4, p0, Lcom/android/phone/BluetoothAtSms$CNMI;->ds:I

    .line 919
    iput p5, p0, Lcom/android/phone/BluetoothAtSms$CNMI;->bfr:I

    .line 920
    return-void
.end method
