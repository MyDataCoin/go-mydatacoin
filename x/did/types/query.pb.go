// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: mdc/did/query.proto

package types

import (
	context "context"
	fmt "fmt"
	grpc1 "github.com/gogo/protobuf/grpc"
	proto "github.com/gogo/protobuf/proto"
	_ "google.golang.org/genproto/googleapis/api/annotations"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	io "io"
	math "math"
	math_bits "math/bits"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.GoGoProtoPackageIsVersion3 // please upgrade the proto package

type QueryDIDRequest struct {
	DidBase64 string `protobuf:"bytes,1,opt,name=did_base64,json=didBase64,proto3" json:"did_base64,omitempty"`
}

func (m *QueryDIDRequest) Reset()         { *m = QueryDIDRequest{} }
func (m *QueryDIDRequest) String() string { return proto.CompactTextString(m) }
func (*QueryDIDRequest) ProtoMessage()    {}
func (*QueryDIDRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_293fd163dd70e325, []int{0}
}
func (m *QueryDIDRequest) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *QueryDIDRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_QueryDIDRequest.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *QueryDIDRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_QueryDIDRequest.Merge(m, src)
}
func (m *QueryDIDRequest) XXX_Size() int {
	return m.Size()
}
func (m *QueryDIDRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_QueryDIDRequest.DiscardUnknown(m)
}

var xxx_messageInfo_QueryDIDRequest proto.InternalMessageInfo

func (m *QueryDIDRequest) GetDidBase64() string {
	if m != nil {
		return m.DidBase64
	}
	return ""
}

type QueryDIDResponse struct {
	DidDocumentWithSeq *DIDDocumentWithSeq `protobuf:"bytes,1,opt,name=did_document_with_seq,json=didDocumentWithSeq,proto3" json:"did_document_with_seq,omitempty"`
}

func (m *QueryDIDResponse) Reset()         { *m = QueryDIDResponse{} }
func (m *QueryDIDResponse) String() string { return proto.CompactTextString(m) }
func (*QueryDIDResponse) ProtoMessage()    {}
func (*QueryDIDResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_293fd163dd70e325, []int{1}
}
func (m *QueryDIDResponse) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *QueryDIDResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_QueryDIDResponse.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *QueryDIDResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_QueryDIDResponse.Merge(m, src)
}
func (m *QueryDIDResponse) XXX_Size() int {
	return m.Size()
}
func (m *QueryDIDResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_QueryDIDResponse.DiscardUnknown(m)
}

var xxx_messageInfo_QueryDIDResponse proto.InternalMessageInfo

func (m *QueryDIDResponse) GetDidDocumentWithSeq() *DIDDocumentWithSeq {
	if m != nil {
		return m.DidDocumentWithSeq
	}
	return nil
}

func init() {
	proto.RegisterType((*QueryDIDRequest)(nil), "mdc.did.QueryDIDRequest")
	proto.RegisterType((*QueryDIDResponse)(nil), "mdc.did.QueryDIDResponse")
}

func init() { proto.RegisterFile("mdc/did/query.proto", fileDescriptor_293fd163dd70e325) }

var fileDescriptor_293fd163dd70e325 = []byte{
	// 286 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x12, 0xce, 0x4d, 0x49, 0xd6,
	0x4f, 0xc9, 0x4c, 0xd1, 0x2f, 0x2c, 0x4d, 0x2d, 0xaa, 0xd4, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17,
	0x62, 0xcf, 0x4d, 0x49, 0xd6, 0x4b, 0xc9, 0x4c, 0x91, 0x92, 0x82, 0xc9, 0xa6, 0x64, 0xa6, 0xc4,
	0xa7, 0xe4, 0x27, 0x97, 0xe6, 0xa6, 0xe6, 0x95, 0x40, 0x14, 0x49, 0xc9, 0xa4, 0xe7, 0xe7, 0xa7,
	0xe7, 0xa4, 0xea, 0x27, 0x16, 0x64, 0xea, 0x27, 0xe6, 0xe5, 0xe5, 0x97, 0x24, 0x96, 0x64, 0xe6,
	0xe7, 0x15, 0x43, 0x64, 0x95, 0x0c, 0xb8, 0xf8, 0x03, 0x41, 0x26, 0xba, 0x78, 0xba, 0x04, 0xa5,
	0x16, 0x96, 0xa6, 0x16, 0x97, 0x08, 0xc9, 0x72, 0x71, 0x81, 0x8c, 0x49, 0x4a, 0x2c, 0x4e, 0x35,
	0x33, 0x91, 0x60, 0x54, 0x60, 0xd4, 0xe0, 0x0c, 0xe2, 0x4c, 0xc9, 0x4c, 0x71, 0x02, 0x0b, 0x28,
	0x25, 0x71, 0x09, 0x20, 0x74, 0x14, 0x17, 0xe4, 0xe7, 0x15, 0xa7, 0x0a, 0xf9, 0x71, 0x89, 0x22,
	0xdb, 0x1c, 0x5f, 0x9e, 0x59, 0x92, 0x11, 0x5f, 0x9c, 0x5a, 0x08, 0xd6, 0xcd, 0x6d, 0x24, 0xad,
	0x07, 0x75, 0xa8, 0x9e, 0x8b, 0xa7, 0x8b, 0x0b, 0x54, 0x51, 0x78, 0x66, 0x49, 0x46, 0x70, 0x6a,
	0x61, 0x90, 0x50, 0x4a, 0x66, 0x0a, 0x9a, 0x98, 0x51, 0x12, 0x17, 0x2b, 0xd8, 0x0e, 0xa1, 0x48,
	0x2e, 0x66, 0x17, 0x4f, 0x17, 0x21, 0x09, 0xb8, 0x01, 0x68, 0x8e, 0x95, 0x92, 0xc4, 0x22, 0x03,
	0x71, 0x94, 0x92, 0x6c, 0xd3, 0xe5, 0x27, 0x93, 0x99, 0xc4, 0x85, 0x44, 0xf5, 0x61, 0xa1, 0x53,
	0x8d, 0xf0, 0x57, 0xad, 0x93, 0xe6, 0x89, 0x47, 0x72, 0x8c, 0x17, 0x1e, 0xc9, 0x31, 0x3e, 0x78,
	0x24, 0xc7, 0x38, 0xe1, 0xb1, 0x1c, 0xc3, 0x85, 0xc7, 0x72, 0x0c, 0x37, 0x1e, 0xcb, 0x31, 0x44,
	0xf1, 0x83, 0xd4, 0x57, 0x80, 0x75, 0x94, 0x54, 0x16, 0xa4, 0x16, 0x27, 0xb1, 0x81, 0xc3, 0xca,
	0x18, 0x10, 0x00, 0x00, 0xff, 0xff, 0xfc, 0xd4, 0x95, 0x83, 0x85, 0x01, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// QueryClient is the client API for Query service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type QueryClient interface {
	// Parameters queries the parameters of the module.
	DID(ctx context.Context, in *QueryDIDRequest, opts ...grpc.CallOption) (*QueryDIDResponse, error)
}

type queryClient struct {
	cc grpc1.ClientConn
}

func NewQueryClient(cc grpc1.ClientConn) QueryClient {
	return &queryClient{cc}
}

func (c *queryClient) DID(ctx context.Context, in *QueryDIDRequest, opts ...grpc.CallOption) (*QueryDIDResponse, error) {
	out := new(QueryDIDResponse)
	err := c.cc.Invoke(ctx, "/mdc.did.Query/DID", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// QueryServer is the server API for Query service.
type QueryServer interface {
	// Parameters queries the parameters of the module.
	DID(context.Context, *QueryDIDRequest) (*QueryDIDResponse, error)
}

// UnimplementedQueryServer can be embedded to have forward compatible implementations.
type UnimplementedQueryServer struct {
}

func (*UnimplementedQueryServer) DID(ctx context.Context, req *QueryDIDRequest) (*QueryDIDResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DID not implemented")
}

func RegisterQueryServer(s grpc1.Server, srv QueryServer) {
	s.RegisterService(&_Query_serviceDesc, srv)
}

func _Query_DID_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(QueryDIDRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(QueryServer).DID(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/mdc.did.Query/DID",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(QueryServer).DID(ctx, req.(*QueryDIDRequest))
	}
	return interceptor(ctx, in, info, handler)
}

var _Query_serviceDesc = grpc.ServiceDesc{
	ServiceName: "mdc.did.Query",
	HandlerType: (*QueryServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "DID",
			Handler:    _Query_DID_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "mdc/did/query.proto",
}

func (m *QueryDIDRequest) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *QueryDIDRequest) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *QueryDIDRequest) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if len(m.DidBase64) > 0 {
		i -= len(m.DidBase64)
		copy(dAtA[i:], m.DidBase64)
		i = encodeVarintQuery(dAtA, i, uint64(len(m.DidBase64)))
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func (m *QueryDIDResponse) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *QueryDIDResponse) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *QueryDIDResponse) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.DidDocumentWithSeq != nil {
		{
			size, err := m.DidDocumentWithSeq.MarshalToSizedBuffer(dAtA[:i])
			if err != nil {
				return 0, err
			}
			i -= size
			i = encodeVarintQuery(dAtA, i, uint64(size))
		}
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func encodeVarintQuery(dAtA []byte, offset int, v uint64) int {
	offset -= sovQuery(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *QueryDIDRequest) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	l = len(m.DidBase64)
	if l > 0 {
		n += 1 + l + sovQuery(uint64(l))
	}
	return n
}

func (m *QueryDIDResponse) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.DidDocumentWithSeq != nil {
		l = m.DidDocumentWithSeq.Size()
		n += 1 + l + sovQuery(uint64(l))
	}
	return n
}

func sovQuery(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozQuery(x uint64) (n int) {
	return sovQuery(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (m *QueryDIDRequest) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowQuery
			}
			if iNdEx >= l {
				return io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= uint64(b&0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		fieldNum := int32(wire >> 3)
		wireType := int(wire & 0x7)
		if wireType == 4 {
			return fmt.Errorf("proto: QueryDIDRequest: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: QueryDIDRequest: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field DidBase64", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowQuery
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				stringLen |= uint64(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			intStringLen := int(stringLen)
			if intStringLen < 0 {
				return ErrInvalidLengthQuery
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthQuery
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.DidBase64 = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipQuery(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthQuery
			}
			if (iNdEx + skippy) > l {
				return io.ErrUnexpectedEOF
			}
			iNdEx += skippy
		}
	}

	if iNdEx > l {
		return io.ErrUnexpectedEOF
	}
	return nil
}
func (m *QueryDIDResponse) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowQuery
			}
			if iNdEx >= l {
				return io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= uint64(b&0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		fieldNum := int32(wire >> 3)
		wireType := int(wire & 0x7)
		if wireType == 4 {
			return fmt.Errorf("proto: QueryDIDResponse: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: QueryDIDResponse: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field DidDocumentWithSeq", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowQuery
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				msglen |= int(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if msglen < 0 {
				return ErrInvalidLengthQuery
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthQuery
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			if m.DidDocumentWithSeq == nil {
				m.DidDocumentWithSeq = &DIDDocumentWithSeq{}
			}
			if err := m.DidDocumentWithSeq.Unmarshal(dAtA[iNdEx:postIndex]); err != nil {
				return err
			}
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipQuery(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthQuery
			}
			if (iNdEx + skippy) > l {
				return io.ErrUnexpectedEOF
			}
			iNdEx += skippy
		}
	}

	if iNdEx > l {
		return io.ErrUnexpectedEOF
	}
	return nil
}
func skipQuery(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowQuery
			}
			if iNdEx >= l {
				return 0, io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= (uint64(b) & 0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		wireType := int(wire & 0x7)
		switch wireType {
		case 0:
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowQuery
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				iNdEx++
				if dAtA[iNdEx-1] < 0x80 {
					break
				}
			}
		case 1:
			iNdEx += 8
		case 2:
			var length int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowQuery
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				length |= (int(b) & 0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if length < 0 {
				return 0, ErrInvalidLengthQuery
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupQuery
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthQuery
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthQuery        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowQuery          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupQuery = fmt.Errorf("proto: unexpected end of group")
)