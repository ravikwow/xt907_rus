.class public interface abstract Lcom/motorola/blur/provider/Email$Account$SecurityPolicy;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/Email$Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SecurityPolicy"
.end annotation


# static fields
.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_TLS_OPTIONAL:I = 0x1

.field public static final SECURITY_TLS_REQUIRED:I = 0x2
